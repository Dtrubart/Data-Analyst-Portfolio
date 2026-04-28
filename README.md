# Data Analyst Portfolio

A data analytics portfolio showcasing end-to-end analytical problem solving using  
**SQL, Python, Excel, Power BI, and data processing techniques**, applied to realistic
business scenarios.

The focus of this portfolio is not only *getting the right answer*, but demonstrating:
- clear analytical thinking
- multiple solution strategies
- production-aware data handling
- strong documentation and communication

---

# Data Analyst Exercises

This section contains a series of hands-on data analytics exercises designed to
simulate common real-world analytical problems.

Each exercise:
- targets a specific analytical pattern
- starts from raw data
- delivers clearly defined outputs
- is solved using multiple tools where applicable

---

## 1️⃣ Org Chart Overhaul

### Objective
Unravel a parent–child hierarchy by mapping each employee’s chain of command and
calculating both direct and total reports.

### Problem Description
Starting from a flat table of employees and their managers, build an analytics-ready
organizational view that supports hierarchical analysis.

### Required Outputs
Create the following columns:

- **Reporting Hierarchy**  
  Chain of command from the highest-ranking manager down to the employee.
- **Direct Reports**  
  Number of employees who report directly to each employee.
- **Total Reports**  
  Total number of employees beneath each employee in the hierarchy  
  (direct + indirect reports).

---

### 📂 Data & Solutions

#### 1.1 Raw Data
- [OfficeSpace — Raw Employee/Manager Data](#)

#### 1.2 Excel Formula Solution
- 📄 Documentation:  
  [1.2.1 Excel Formula Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/0463af6b26604a2d466393dc2a0a30d5cd135798/1.2.1%20Excel%20Formula%20Solution%20Doc)
- 📊 Excel File:  
  [1.2.2 Excel Formula Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/eb7d5b22cf3ed93728a4a49f64e262714fdd3106/1.2.2%20Excel%20Solution%20Formula.xlsx)

#### 1.3 Power BI – Power Query Solution
- 📄 Documentation:  
  [1.3.1 Power Query – Power BI Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d373f8b2ff64dd67b8d2a26ab92d3cd5f8032f48/1.3.1%20Power%20Query%20-%20Power%20Bi%20Solution%20Doc%20.md)
- 📊 Power Query File:  
  [1.3.2 Power Query Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/eb7d5b22cf3ed93728a4a49f64e262714fdd3106/1.3.2%20Excel%20Solution%20Power%20Query.xlsx)

#### 1.4 SQL Solution
- 📄 Documentation:  
  [1.4.1 SQL Solution Doc]( https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d373f8b2ff64dd67b8d2a26ab92d3cd5f8032f48/1.4.1%20SQL%20Solution%20Doc%20.md)
- 🗄 SQL Script:  
  [1.4.2 SQL Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/96948b32f992dbed5ee3487e687e3a7450d0a378/1.4.2%20SQL%20Solution.sql)

#### 1.5 Python Solution
- 📄 Documentation:  
  [1.5.1 Python Solution Doc]( https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d373f8b2ff64dd67b8d2a26ab92d3cd5f8032f48/1.5.1%20Python%20Solution%20Doc%20.md)
- 🐍 Python Script:  
  [1.5.2 Python Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/96948b32f992dbed5ee3487e687e3a7450d0a378/1.5.2%20Python%20Solution.py)

---

## 2️⃣ Flatten the Stack

### Objective
Flatten nested JSON data by unpacking list-based attributes into individual rows.

### Problem Description
You are given a table containing records with nested JSON arrays (e.g., orders with
multiple line items). Each list item must be expanded into its own row while preserving
the parent record context.

### Required Output
Transform a single record with multiple nested elements into multiple rows,
producing one row per nested item.

---

### 📂 Data & Solutions

#### 2.1 Raw Data
- [OfficeSpace — Raw Employee/Manager Data]()

#### 2.2 Excel Formula Solution
- 📄 Documentation:  
  [1.2.1 Excel Formula Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/0463af6b26604a2d466393dc2a0a30d5cd135798/1.2.1%20Excel%20Formula%20Solution%20Doc)
- 📊 Excel File:  
  [1.2.2 Excel Formula Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/eb7d5b22cf3ed93728a4a49f64e262714fdd3106/1.2.2%20Excel%20Solution%20Formula.xlsx)

#### 2.3 Power BI – Power Query Solution
- 📄 Documentation:  
  [1.3.1 Power Query – Power BI Solution Doc](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d373f8b2ff64dd67b8d2a26ab92d3cd5f8032f48/1.3.1%20Power%20Query%20-%20Power%20Bi%20Solution%20Doc%20.md)
- 📊 Power Query File:  
  [1.3.2 Power Query Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/eb7d5b22cf3ed93728a4a49f64e262714fdd3106/1.3.2%20Excel%20Solution%20Power%20Query.xlsx)

#### 2.4 SQL Solution
- 📄 Documentation:  
  [1.4.1 SQL Solution Doc]( https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d373f8b2ff64dd67b8d2a26ab92d3cd5f8032f48/1.4.1%20SQL%20Solution%20Doc%20.md)
- 🗄 SQL Script:  
  [1.4.2 SQL Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/96948b32f992dbed5ee3487e687e3a7450d0a378/1.4.2%20SQL%20Solution.sql)

#### 2.5 Python Solution
- 📄 Documentation:  
  [1.5.1 Python Solution Doc]( https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/d373f8b2ff64dd67b8d2a26ab92d3cd5f8032f48/1.5.1%20Python%20Solution%20Doc%20.md)
- 🐍 Python Script:  
  [1.5.2 Python Solution](https://github.com/Dtrubart/Data-Analyst-Portfolio/blob/96948b32f992dbed5ee3487e687e3a7450d0a378/1.5.2%20Python%20Solution.py)


---

## 3️⃣ Rolling Up, Looking Back

### Objective
Aggregate transactional data by time period and calculate period-over-period changes.

### Problem Description
You are given transaction-level data for multiple coffee shop locations.
Your task is to aggregate total sales by **store and month**, then compute the
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

Each order must be matched to the promotion active on the order date.

### Required Output
A table where each transaction is linked to the correct promotion.

---

## 5️⃣ Movie Metrics

### Objective
Engineer user-level engagement metrics from raw activity data.

### Problem Description
You are given:
- A table of users
- A table of movie viewing activity (movie name, start date, completion status)

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
You work for a language learning platform with access to a large table of lesson
completions (date, user, lesson ID).

### Assumptions
- Current date: **2025-09-29**
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

### Required Outputs
Create a table containing:
- Date
- Closing Price
- 50-day Moving Average
- 200-day Moving Average
- **Golden Cross Flag**  
  A binary indicator equal to 1 only on the exact date when the 50-day moving average
  crosses above the 200-day moving average.

---
