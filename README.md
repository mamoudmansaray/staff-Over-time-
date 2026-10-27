# Staffing and Overtime Analysis

### Business question
Which programs account for the most overtime spending?

### Dataset and definitions
540 records. One row is one program shift on one date. Ninety days, three programs, two shifts daily. Overtime is assumed to pay 1.5 times the hourly rate. All costs are USD.

Columns in order: date, program, shift, regular_hours, overtime_hours, hourly_rate, regular_cost, overtime_cost, total_cost.

### Workflow
1. Check nonnegative hours and recalculate overtime cost.
2. Aggregate hours and costs by program in SQL.
3. Compare the share of staffing cost attributable to overtime.

### Run the code
Run `python analyze.py` from this folder (or `python3 analyze.py`). The script locates its inputs beside itself, creates a SQLite table, runs analysis.sql, writes results.csv, and builds dashboard.html. Python uses the standard library only. A failed schema or numeric conversion stops the run instead of silently discarding records.

### Verified sample result
Metric: overtime_cost. Program A: 7932.0; Program B: 7419.0; Program C: 7092.0.
These numbers are from the provided dataset. Percentage results use 0-100 values, not Excel percentage fractions. For forecasting, lower MAE is better. For budget variance, positive means over budget.

### Excel exercise
Open data.csv. Save As an Excel Workbook (.xlsx). Select the source range and Insert > Table, then Insert > PivotTable on a new sheet.

Rows: program. Values: Sum of overtime_cost and Sum of total_cost. Filter: shift. Create a column chart of overtime cost.

Formula practice (source headers in row 1): In J2 enter =E2*F2*1.5 and compare against H2. Fill down.

The formula examples assume an English-language Excel installation using commas. Verify the target columns before filling down. Save your finished workbook and a dashboard screenshot in this folder.

### Interpretation and limits
Random fictional overtime does not identify the reasons for staffing shortages.

### Make the project your own
Add a weekly summary and compare day and evening shifts.
Write three findings with numerical evidence, one limitation, and one next action. Explain the query, verify at least one result manually, and replace the practice description with your own completed-work summary only after reproducing the work.

### Files
Source data.csv, analyze.py, analysis.sql, config.json, results.csv, project.db, dashboard.html, and sample_output.txt.
