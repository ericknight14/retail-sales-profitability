
-- Project: Retail Sales and Profitability Analysis
-- Database: SQLite
-- Table: superstore

-- Query 1: Inspect the first 10 records
SELECT *
FROM superstore
LIMIT 10;

-- Query 2: Count the total records
SELECT COUNT(*) AS total_records
FROM superstore;

-- Query 3: Calculate overall sales and profit
SELECT
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    AVG(Sales) AS average_sales_per_record,
    AVG(Profit) AS average_profit_per_record
FROM superstore;

-- Query 4: Calculate overall profit margin
SELECT
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    ROUND(
        100.0 * SUM(Profit) / NULLIF(SUM(Sales), 0),
        2
    ) AS profit_margin_pct
FROM superstore;
