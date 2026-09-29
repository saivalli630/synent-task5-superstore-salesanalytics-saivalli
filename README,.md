# Superstore Sales & Profit Analytics

## 1. Problem Statement

The objective of this project is to analyze Superstore sales data and identify sales trends, profitability patterns, customer performance, category performance, and regional performance.

The project transforms raw sales data into meaningful business insights using Python, SQL, and Power BI.

## 2. Dataset Details

- **Dataset:** Sample Superstore
- **Records:** 9,994
- **Columns:** 21
- **Time period:** 2014–2017
- **Main data fields:** Orders, Customers, Products, Categories, Sales, Profit, Quantity, Discount, Region, Order Date, and Ship Date.

## 3. Approach

### Data Cleaning and Validation

- Loaded the dataset using Python/Pandas.
- Checked missing values.
- Validated data types.
- Checked invalid quantities.
- Checked negative sales values.
- Checked for negative shipping durations.
- Converted order and shipping dates into appropriate date fields.

### Feature Engineering

Created:
- Shipping Days
- Order Year
- Order Month
- Order Quarter
- Profit Margin

### SQL Analysis

The cleaned data was loaded into SQLite and analyzed using SQL for:
- Overall KPI summary
- Category and sub-category performance
- Monthly and annual performance
- Customer performance
- Regional and state performance
- Data validation checks

### Power BI Dashboard

Created an interactive dashboard containing:
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

### Project Workflow

```text
Raw CSV
   ↓
Python / Pandas
   ↓
Data Cleaning & Validation
   ↓
Feature Engineering
   ↓
SQLite / SQL Analysis
   ↓
Reporting CSVs
   ↓
Power BI Dashboard
```

## 4. Results

- **Total Sales:** approximately $2.30M
- **Total Profit:** approximately $286.40K
- **Total Customers:** 793
- **Average Shipping Days:** 3.96 days
- **Overall Profit Margin:** 12.47%
- Technology generated the highest category sales.
- Tables generated negative profit.
- Annual sales increased from approximately $484K in 2014 to $733K in 2017.
- The dashboard allows interactive analysis by year, category, and region.

## Technologies Used

- Python
- Pandas
- NumPy
- SQL
- SQLite
- Microsoft Power BI
