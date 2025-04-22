/*
============================================================
Exploratory Data Analysis: Database Exploration
============================================================

Purpose:
	This script defines the ways to explore the database as a part of EDA. We use INFORMATION_SCHEMA to acheive this.

	1. Explore all the tables.
	2. Explore all the columns in the table.
	3. Check for the constraints in the tables and views
*/

-- Get the details of all the tables in our database
SELECT * FROM INFORMATION_SCHEMA.TABLES

-- Get details for each shcema
-- 1. Bronze
SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Bronze';

-- 2. Silver
SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'Silver';

-- 3. Gold
SELECT * FROM INFORMATION_SCHEMA.VIEWS
WHERE TABLE_SCHEMA = 'Gold';

-- Get details about columns
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'fact_sales';





