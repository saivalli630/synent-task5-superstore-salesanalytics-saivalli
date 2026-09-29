# Superstore Sales & Profit Analytics

## Project Overview
This project analyzes the Sample Superstore dataset using Python, SQLite SQL, and Power BI. The workflow covers data cleaning, validation, feature engineering, SQL-based reporting, and interactive dashboard development.

## Dataset
- Records: 9,994
- Columns: 21
- Years covered: 2014–2017
- Missing values: 0 across all columns

## Tools & Technologies
- Python: Pandas, NumPy
- SQL: SQLite
- BI: Microsoft Power BI
- Data analysis: data cleaning, validation, feature engineering, aggregation

## Data Preparation
The dataset was processed to:
- Convert Order Date and Ship Date to date fields
- Validate missing values and data types
- Check for negative shipping durations
- Check for invalid quantities and negative sales
- Create Shipping Days
- Create Order Year, Order Month, and Order Quarter
- Create Profit Margin

## SQL Reporting
Reporting views were created for:
- Category performance
- Monthly performance
- Customer performance
- Regional performance

A KPI summary was also generated containing total orders, customers, sales, profit, average shipping days, and overall profit margin.

## Power BI Dashboard
The dashboard contains:
- Total Sales
- Total Profit
- Total Orders
- Total Customers
- Average Shipping Days
- Overall Profit Margin
- Monthly Sales & Profit Trend
- Sales & Profit by Category
- Sales & Profit by Region
- Top 10 Customers by Sales
- Year, Category, and Region slicers

## Key Findings
- Technology generated the highest category sales: $836,154.02.
- Technology generated $145,455.44 in profit.
- Furniture generated $741,999.73 in sales and $18,451.10 in profit.
- Tables generated $206,965.53 in sales and a loss of $17,725.57.
- Copiers generated $149,528.01 in sales and $55,617.88 in profit.
- Annual sales increased from $484,247.47 in 2014 to $733,215.05 in 2017.
- Average shipping time was 3.96 days.
- The dataset contained no negative shipping durations, invalid quantities, or negative sales values based on the validation checks performed.

## Project Workflow
Raw CSV → Python Cleaning & Validation → Feature Engineering → SQLite → SQL Reporting → Power BI Dashboard

## How to Reproduce
1. Load the original Superstore CSV into Python.
2. Clean and validate the data.
3. Create the engineered fields.
4. Save the cleaned dataset.
5. Load the cleaned data into SQLite.
6. Run the SQL analysis queries.
7. Export reporting tables.
8. Load the reporting files into Power BI.
9. Build the KPI cards, charts, and slicers.

## Author
Data Analytics / Data Science Internship Project
