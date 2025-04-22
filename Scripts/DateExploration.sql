/*
============================================================
Exploratory Data Analysis: Date Exploration
============================================================

Purpose:
	This script defines the ways to explore the dates as a part of EDA.

	1. Explore the date columns 
	2. This helps to get information such as latest, oldest customers etc.
*/

-- Find the date of the first and last order
SELECT 
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date
FROM Gold.fact_sales;

-- Find the Time Gap between first and last order
SELECT 
DATEDIFF(year, MIN(order_date), MAX(order_date)) AS time_gap
FROM Gold.fact_sales;

-- Find the gap between each order_date and ship_date in days
SELECT
order_date,
ship_date,
DATEDIFF(day, order_date, ship_date) AS time_gap_days
FROM Gold.fact_sales;


-- Find the age of youngest and the oldest customer and also the age difference between them
SELECT 
DATEDIFF(year, MIN(birth_date), GETDATE()) AS oldest_customer,
DATEDIFF(year, MAX(birth_date), GETDATE()) AS youngest_customer,
DATEDIFF(year, MIN(birth_date), MAX(birth_date)) AS age_gap_years
FROM Gold.dim_customers;
