
-- Project: Retail Sales and Profitability Analysis
-- Database: SQLite
-- Table: superstore

-- Query 1: Sales and profitability by category
SELECT
    Category,
    COUNT(*) AS number_of_records,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(
        100.0 * SUM(Profit) / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY Category
ORDER BY total_sales DESC;


-- Query 2: Sales and profitability by region
SELECT
    Region,
    COUNT(*) AS number_of_records,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(
        100.0 * SUM(Profit) / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM superstore
GROUP BY Region
ORDER BY total_sales DESC;


-- Query 3: Classify records by profit status
SELECT
    CASE
        WHEN Profit > 0 THEN 'Profitable'
        WHEN Profit = 0 THEN 'Break-even'
        ELSE 'Loss'
    END AS profit_status,
    COUNT(*) AS number_of_records,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM superstore
GROUP BY
    CASE
        WHEN Profit > 0 THEN 'Profitable'
        WHEN Profit = 0 THEN 'Break-even'
        ELSE 'Loss'
    END
ORDER BY total_sales DESC;
