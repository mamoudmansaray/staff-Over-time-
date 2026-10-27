-- SQLite query. Source: provided synthetic data.csv
SELECT program, SUM(overtime_hours) AS overtime_hours, ROUND(SUM(overtime_cost),2) AS overtime_cost, ROUND(SUM(total_cost),2) AS total_cost, ROUND(100.0*SUM(overtime_cost)/NULLIF(SUM(total_cost),0),2) AS overtime_cost_pct FROM data GROUP BY program ORDER BY overtime_cost DESC;
