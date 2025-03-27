# Internet Sales Data Warehouse

This project provides the SQL schema definitions for a data warehouse built to analyze internet sales performance. It uses a star schema structure, optimized for querying and business intelligence applications.

## Schema Overview

The data warehouse consists of one central fact table and multiple supporting dimension tables:

### Fact Table
- InternetSales_Fact: Contains transactional data related to online purchases, such as order quantities, revenue, discount amounts, and associated foreign keys to dimensions.

### Dimension Tables
- Date_Dim: Calendar-related attributes to support time-based analysis.
- Product_Dim: Information about individual products.
- Customer_Dim: Information about customers.

## File Structure

Each `sql` file contains DDL statements to create the corresponding table.

## Breakdown

### Extracting Internet Sales Fact table
```sql
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2022].[dbo].[FactInternetSales] 
WHERE 
  LEFT (OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 
ORDER BY 
  OrderDateKey
```
