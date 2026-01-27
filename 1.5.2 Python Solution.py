import pandas as pd
from collections import defaultdict, deque

# -----------------------------
# 1) Load + clean
# -----------------------------
df = pd.read_csv("OfficeSpace.csv", dtype=str)  # columns: Employee Name, Manager Name

df["Employee Name"] = df["Employee Name"].fillna("").str.strip()
df["Manager Name"]  = df["Manager Name"].fillna("").str.strip()

# Remove invalid employees
df = df[df["Employee Name"] != ""].copy()

# Remove accidental header row if present
df = df[~((df["Employee Name"] == "Employee Name") & (df["Manager Name"] == "Manager Name"))].copy()

# Normalize top-level managers
df.loc[df["Manager Name"] == "", "Manager Name"] = pd.NA

# Enforce unique employee names (keeps first occurrence)
df = df.drop_duplicates(subset=["Employee Name"], keep="first").copy()

# -----------------------------
# 2) Build lookup maps
# -----------------------------
manager_of = df.set_index("Employee Name")["Manager Name"].to_dict()

children = defaultdict(list)
for emp, mgr in manager_of.items():
    if pd.notna(mgr):
        children[mgr].append(emp)

# -----------------------------
# 3) Reporting Hierarchy (Top -> ... -> Employee) with cycle protection
# -----------------------------
def reporting_hierarchy(emp: str, max_hops: int = 100) -> str:
    chain = [emp]
    seen = {emp}
    cur = emp

    for _ in range(max_hops):
        mgr = manager_of.get(cur, pd.NA)
        if pd.isna(mgr):
            break
        if mgr in seen:
            chain.append(f"[CYCLE:{mgr}]")
            break
        chain.append(mgr)
        seen.add(mgr)
        cur = mgr

    return " > ".join(reversed(chain))

df["Reporting Hierarchy"] = df["Employee Name"].map(reporting_hierarchy)

# -----------------------------
# 4) Direct Reports
# -----------------------------
df["Direct Reports"] = df["Employee Name"].map(lambda e: len(children.get(e, []))).astype(int)

# -----------------------------
# 5) Total Reports (all descendants) — postorder DP
# -----------------------------
total_desc = {emp: 0 for emp in manager_of.keys()}
out_degree = {emp: len(children.get(emp, [])) for emp in manager_of.keys()}
q = deque([emp for emp, deg in out_degree.items() if deg == 0])

while q:
    node = q.popleft()
    mgr = manager_of.get(node, pd.NA)
    if pd.isna(mgr):
        continue

    total_desc[mgr] = total_desc.get(mgr, 0) + (1 + total_desc.get(node, 0))

    out_degree[mgr] = out_degree.get(mgr, 0) - 1
    if out_degree[mgr] == 0:
        q.append(mgr)

# Cycle / invalid structure check (important for correctness)
if any(deg > 0 for deg in out_degree.values()):
    raise ValueError("Cycle detected (or invalid hierarchy). Total Reports cannot be computed safely.")

df["Total Reports"] = df["Employee Name"].map(lambda e: int(total_desc.get(e, 0)))

# -----------------------------
# 6) Final output
# -----------------------------
df = df[["Employee Name", "Manager Name", "Reporting Hierarchy", "Direct Reports", "Total Reports"]]
df = df.sort_values(["Total Reports", "Employee Name"], ascending=[False, True])

print(df.to_string(index=False))
# df.to_csv("OfficeSpace_OrgChart_Output.csv", index=False)