/*
============================================================
Exploratory Data Analysis: Dimension Exploration
============================================================

Purpose:
	This script defines the ways to explore the dimensions of the tables as a part of EDA. We use DISTINCT function.

	1. Explore all the distinct values in the columns of all tables.
	2. Helps to get the understanding about different values in the columns.

*/

-- CUSTOMERS TABLE

-- Check for different marital status of the customers
SELECT DISTINCT marital_status
FROM Gold.dim_customers;

-- Check for different gender of customers
SELECT DISTINCT gender
FROM Gold.dim_customers;

-- PRODUCTS TABLE

-- Check for different product categories
SELECT DISTINCT category
FROM Gold.dim_products;

-- Check for subcategories as well 
SELECT DISTINCT category, sub_category
FROM Gold.dim_products;

-- Check for product name as well to get a bigger picture
SELECT DISTINCT category, sub_category, product_name
FROM Gold.dim_products;
