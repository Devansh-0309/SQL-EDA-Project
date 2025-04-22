/*
============================================================
Exploratory Data Analysis: Measure Exploration
============================================================

Purpose:
	This script defines the ways to explore the measures in the tables as a part of EDA.

	1. Check for the aggregations.
	2. Explore for all possible measures in the tables.

*/

-- PRODUCTS TABLE EXPLORATION

-- Check the minimum and highest cost of the product
SELECT 
MIN(cost) AS min_cost,
MAX(cost) AS max_cost
FROM Gold.dim_products;

-- check for the average cost of the porducts
SELECT
AVG(cost) AS avg_cost
FROM Gold.dim_products
WHERE cost !=0;

-- Check for the total cost of all products
SELECT 
SUM(cost) AS sum_cost
FROM Gold.dim_products;

-- Combine all the explorations with 0's included
SELECT 
MIN(cost) AS min_cost,
MAX(cost) AS max_cost,
SUM(cost) AS sum_cost,
AVG(cost) AS avg_cost
FROM Gold.dim_products;

-- Combine all the explorations without including 0's
SELECT 
MIN(cost) AS min_cost,
MAX(cost) AS max_cost,
SUM(cost) AS sum_cost,
AVG(cost) AS avg_cost
FROM Gold.dim_products
WHERE cost != 0;

-- SALES TABLE EXPLORATION
SELECT * FROM Gold.fact_sales;

-- Check for min, max, avg and total sales
SELECT 
MIN(sales) AS min_sales,
MAX(sales) AS max_sales,
SUM(sales) AS total_sales,
AVG(sales) AS avg_sales
FROM Gold.fact_sales;

-- check total sales by total quantity
SELECT 
SUM(sales) AS total_sales,
SUM(quantity) AS total_quantity,
SUM(sales)/SUM(quantity) AS avg_sales_per_quantity
FROM Gold.fact_sales;

