/* =======================================================
   Org Chart Overhaul — SQL Solution (MariaDB 10.4 / XAMPP)

   Goal
   Build an analytics-ready org view from a flat employee–manager table.

   Outputs
   1) reporting_hierarchy : Top manager → … → employee (string path)
   2) direct_reports      : count of immediate reports
   3) total_reports       : count of all descendants (direct + indirect)

   Notes
   - Assumes one manager per employee (tree/forest structure).
   - Includes a recursion depth guard (lvl < 100) to prevent infinite loops
     in case of bad data.
   - Total reports is computed by matching deeper hierarchy paths (LIKE),
     which is easy to understand for an exercise but relies on consistent naming.
======================================================= */


/* -----------------------------
   0) Data normalization
   - Trim whitespace
   - Convert empty manager values to NULL (top-level identification)
   - Remove invalid/header rows if present
------------------------------ */
UPDATE employees
SET employee_name = TRIM(employee_name),
    manager_name  = NULLIF(TRIM(manager_name), '');

DELETE FROM employees
WHERE employee_name IS NULL OR employee_name = '';

-- Safety: remove CSV header accidentally imported as a data row
DELETE FROM employees
WHERE employee_name = 'Employee Name' AND manager_name = 'Manager Name';


/* -----------------------------
   1) Build hierarchy paths using a recursive CTE
   - Anchor: start from top-level employees (manager_name IS NULL)
   - Recursive step: add employees whose manager already exists in the CTE
------------------------------ */
WITH RECURSIVE heir AS (

    -- Anchor (roots): each top-level manager starts their own hierarchy path
    SELECT
        employee_name,
        manager_name,
        employee_name AS reporting_hierarchy,
        0 AS lvl
    FROM employees
    WHERE manager_name IS NULL

    UNION ALL

    -- Recursive step: append the employee name to the manager’s path
    SELECT
        e.employee_name,
        e.manager_name,
        CONCAT(h.reporting_hierarchy, ' > ', e.employee_name) AS reporting_hierarchy,
        h.lvl + 1 AS lvl
    FROM employees e
    JOIN heir h
      ON e.manager_name = h.employee_name
    WHERE h.lvl < 100
),

/* -----------------------------
   2) Direct reports
   Count how many employees list each manager as their immediate manager
------------------------------ */
direct AS (
    SELECT
        manager_name AS employee_name,
        COUNT(*) AS direct_reports
    FROM employees
    WHERE manager_name IS NOT NULL
    GROUP BY manager_name
),

/* -----------------------------
   3) Consolidate: hierarchy path + direct reports
------------------------------ */
hier_direct AS (
    SELECT
        h.employee_name,
        h.manager_name,
        h.reporting_hierarchy,
        COALESCE(d.direct_reports, 0) AS direct_reports
    FROM heir h
    LEFT JOIN direct d
      ON h.employee_name = d.employee_name
)

/* -----------------------------
   4) Total reports (direct + indirect)
   A person "m" is an ancestor of "e" if e.reporting_hierarchy starts with
   m.reporting_hierarchy + ' > '
------------------------------ */
SELECT
    m.employee_name,
    m.manager_name,
    m.reporting_hierarchy,
    m.direct_reports,
    COUNT(e.employee_name) AS total_reports
FROM hier_direct m
LEFT JOIN hier_direct e
  ON e.reporting_hierarchy LIKE CONCAT(m.reporting_hierarchy, ' > %')
GROUP BY
    m.employee_name,
    m.manager_name,
    m.reporting_hierarchy,
    m.direct_reports
ORDER BY total_reports DESC, m.employee_name;