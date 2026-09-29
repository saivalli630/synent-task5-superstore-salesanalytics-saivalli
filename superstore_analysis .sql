-- Superstore Sales & Profit Analytics
-- SQLite analysis queries

-- 1. Overall KPI summary
SELECT
    COUNT(DISTINCT "Order ID") AS Total_Orders,
    COUNT(DISTINCT "Customer ID") AS Total_Customers,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG("Shipping Days"), 2) AS Avg_Shipping_Days,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2)
        AS Overall_Profit_Margin
FROM superstore_sales;


-- 2. Category performance
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2)
        AS Profit_Margin
FROM superstore_sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 3. Sub-category performance
SELECT
    Category,
    "Sub-Category",
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2)
        AS Profit_Margin
FROM superstore_sales
GROUP BY Category, "Sub-Category"
ORDER BY Profit_Margin ASC;


-- 4. Annual performance
SELECT
    "Order Year",
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2)
        AS Profit_Margin
FROM superstore_sales
GROUP BY "Order Year"
ORDER BY "Order Year";


-- 5. Monthly performance
SELECT
    "Order Year" AS Year,
    "Order Month" AS Month,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2)
        AS Profit_Margin
FROM superstore_sales
GROUP BY "Order Year", "Order Month"
ORDER BY "Order Year", "Order Month";


-- 6. Customer performance
SELECT
    "Customer ID",
    "Customer Name",
    Segment,
    COUNT(DISTINCT "Order ID") AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore_sales
GROUP BY "Customer ID", "Customer Name", Segment
ORDER BY Total_Sales DESC
LIMIT 10;


-- 7. Regional/state performance
SELECT
    Region,
    State,
    COUNT(DISTINCT "Order ID") AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND((SUM(Profit) / NULLIF(SUM(Sales), 0)) * 100, 2)
        AS Profit_Margin
FROM superstore_sales
GROUP BY Region, State
ORDER BY Region, Total_Sales DESC;


-- 8. Data validation checks
SELECT COUNT(*) AS Total_Records
FROM superstore_sales;

SELECT
    SUM(CASE WHEN "Shipping Days" < 0 THEN 1 ELSE 0 END)
        AS Negative_Shipping_Days,
    SUM(CASE WHEN Quantity <= 0 THEN 1 ELSE 0 END)
        AS Invalid_Quantities,
    SUM(CASE WHEN Sales < 0 THEN 1 ELSE 0 END)
        AS Negative_Sales
FROM superstore_sales;
