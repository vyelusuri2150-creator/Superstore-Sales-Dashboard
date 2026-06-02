-- 1. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM `superstore_sales.csv`;

-- 2. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM `superstore_sales.csv`;

-- 3. Total Orders
SELECT COUNT(Order_ID) AS Total_Orders
FROM `superstore_sales.csv`;

-- 4. Sales by Region
SELECT Region,
SUM(Sales) AS Total_Sales
FROM `superstore_sales.csv`
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 5. Profit by Category
SELECT Category,
SUM(Profit) AS Total_Profit
FROM `superstore_sales.csv`
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 6. Monthly Sales Trend
SELECT YEAR(Order_Date) AS Year,
MONTH(Order_Date) AS Month,
SUM(Sales) AS Monthly_Sales
FROM `superstore_sales.csv`
GROUP BY Year, Month
ORDER BY Year, Month;

-- 7. Top 5 Products by Sales
SELECT Product_Name,
SUM(Sales) AS Total_Sales
FROM `superstore_sales.csv`
GROUP BY Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- 8. Sales by Segment
SELECT Segment,
SUM(Sales) AS Total_Sales
FROM `superstore_sales.csv`
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 9. Sales by State
SELECT State,
SUM(Sales) AS Total_Sales
FROM `superstore_sales.csv`
GROUP BY State
ORDER BY Total_Sales DESC;

-- 10. Discount Impact on Profit
SELECT Discount,
AVG(Profit) AS Average_Profit
FROM `superstore_sales.csv`
GROUP BY Discount
ORDER BY Discount;