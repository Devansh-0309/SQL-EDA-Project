# **SQL-EDA-Project**

## Overview
Exploratory Data Analysis is a process to get to know the insights of the database. It is performed by data analyst/engineers to help the buisness grow.

## Steps
We have divided this process into six different parts

### 1. Database Exploration
**Purpose:**
    This is a technique where we use different methods to explore the database for e.g (total no. of tables, datatypes of columns etc.)


### 2. Dimension Exploration
**Purpose:**
    We use different methods to explore the dimension of different tables an maily we use the function DISTINCT for e.g (different values in a columns etc.)
    This also tells us about the granularity of the columns

### 3. Date Exploration
**Purpose:**
    We explore the date columns present in the tables using functions like max, min etc. for e.g (oldest customer, youngest customer etc.)
  
### 4. Measure Exploration
**Purpose:**
    Measures are the numeric columns in the tables that make sense to be aggretated for e.g Sales.
    We explore the measures present in the tables using aggregate functions like max, min, sum etc. for e.g (total sales etc.)

### 5. Magnitude Exploration
**Purpose:**
    We explore the different scenarios based on the concept **Dimension By Measure** for e.g (customers by total sales etc.)

### 6. Ranking Analysis
**Purpose:**
    We explore columns by concept **Rank[Dimension] By Aggregate[Measures]** 
    This is used to rank the dimensions by different measures for e.g (total sales by country etc.)
