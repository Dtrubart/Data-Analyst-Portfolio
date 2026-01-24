# Data-Analyst-Portfolio
Data analytics portfolio showcasing SQL, Python, BI, and data processing projects with real-world business use cases.

# Data Analyst Exercises

This section contains a series of hands-on data analytics exercises designed to
simulate common real-world analytical problems. Each exercise focuses on a specific
analytical pattern and is solved using multiple tools where applicable.

---

## 1️⃣ Org Chart Overhaul

### Objective
Unravel a parent–child hierarchy by mapping each employee’s chain of command and
calculating both direct and total reports.

### Problem Description
Starting from a flat table of employees and their managers, build an analytics-ready
organizational view.

### Required Outputs
Create the following columns:

- **Reporting Hierarchy**  
  The chain of command from the highest-ranking manager down to the employee.
- **Direct Reports**  
  The number of employees who report directly to each employee.
- **Total Reports**  
  The total number of employees beneath each employee in the hierarchy
  (direct + indirect reports).

[1.2.1 Excel Formula Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/0463af6b26604a2d466393dc2a0a30d5cd135798/1.2.1%20Excel%20Formula%20Solution%20Doc)
[1.3.1 Power Query - Power Bi Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d9cb147c02776cd267e0dd3d7fcdc265fd16a7b8/1.3.1%20Power%20Query%20-%20Power%20Bi%20Solution%20Doc)
[1.4.1 SQL Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d9cb147c02776cd267e0dd3d7fcdc265fd16a7b8/1.4.1%20SQL%20Solution%20Doc)
[1.5.1 Python Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d9cb147c02776cd267e0dd3d7fcdc265fd16a7b8/1.5.1%20Python%20Solution%20Doc)
---


## 2️⃣ Flatten the Stack

### Objective
Flatten nested JSON data by unpacking list-based attributes into individual rows.

### Problem Description
You are given a table containing records with nested JSON arrays (e.g., orders with
multiple line items). Each list item must be expanded into its own row while preserving
the parent record context.

### Required Output
Transform a single record with multiple nested items into multiple rows, producing
one row per nested element.

---

## 3️⃣ Rolling Up, Looking Back

### Objective
Aggregate transactional data by time period and calculate period-over-period changes.

### Problem Description
You are given raw transaction-level data for multiple coffee shop locations.
Your task is to summarize total sales by **store and month**, then compute the
**month-over-month change in sales** for each store.

### Required Outputs
- Monthly total sales per store
- Month-over-month sales change (in dollars)

---

## 4️⃣ Spot the Sale

### Objective
Associate transactions with the correct promotional period based on date logic.

### Problem Description
You are given:
- A table of promotional periods (start date, end date)
- A table of orders (order date, quantity)

Each order must be matched to the promotion that was active on the order date.

### Required Output
A table where each transaction is correctly linked to the promotion active at the
time of purchase.

---

## 5️⃣ Movie Metrics

### Objective
Engineer user-level engagement metrics from raw activity data.

### Problem Description
You are given:
- A table of users
- A table of movie viewing activity (movie name, start date, completion status)

Your task is to derive key engagement metrics for each user.

### Required Outputs
For each user, compute:

- Date of first movie finished
- Name of first movie finished
- Date of last movie finished
- Name of last movie finished
- Total movies started
- Total movies finished

---

## 6️⃣ Streak Leaderboard

### Objective
Identify active user streaks and rank users based on streak length.

### Problem Description
You work for a language learning platform and have access to a large table of lesson
completions (date, user, lesson ID).

A streak is defined as **consecutive days with at least one lesson completion**.

### Assumptions
- The current date is **2025-09-29**
- A streak is considered *active* only if the user completed a lesson on **2025-09-28**

### Required Output
A leaderboard showing the **top 10 users** with the longest active streaks.

---

## 7️⃣ Turning Bullish

### Objective
Identify bullish market signals using moving averages.

### Problem Description
You are given daily closing prices for the SPDR S&P 500 ETF Trust (SPY) over the last
five years.

Your task is to compute short-term and long-term moving averages and detect
“Golden Cross” events.

### Required Outputs
Create a table containing:

- **Date**
- **Closing Price**
- **50-day Moving Average**
- **200-day Moving Average**
- **Golden Cross Flag**  
  A binary field (1/0) equal to 1 only on the date when the 50-day moving average
  crosses from below to above the 200-day moving average.

---

