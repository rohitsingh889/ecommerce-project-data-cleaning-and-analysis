# E-commerce Sales Data Analysis Project

## Project Overview
This project focuses on cleaning, transforming, and analyzing a multi-table e-commerce dataset from **Olist**, a Brazilian marketplace. The goal is to uncover insights about **customer behavior, product performance, and delivery efficiency** through Python-based data wrangling, feature engineering, and exploratory data analysis (EDA). The cleaned dataset is also ready for dashboard visualization in **Power BI**.

## Features
- **Data Cleaning**: Handled missing values, duplicates, inconsistencies, and outliers to ensure data quality.  
- **Data Transformation**: Created new features such as delivery time, approval time, and aggregated sales data by product and region.  
- **Exploratory Data Analysis (EDA)**: Visualized sales trends, customer behavior, product performance, and delivery efficiency using **Seaborn** and **Matplotlib**.  
- **Data Storage**: Prepared datasets for PostgreSQL, enabling queries, aggregations, and integration with BI tools.  
- **Dashboard Ready**: Cleaned and structured dataset ready for interactive dashboards in Power BI.  

## Dataset Details
- **Source**: [Kaggle - Olist Brazilian E-commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)  
- **Format**: CSV  
- **License**: Public  
- **Description**: This dataset contains multiple tables representing customers, orders, payments, products, sellers, reviews, and geolocation data for a Brazilian e-commerce platform. It is ideal for analyzing sales trends, customer behavior, and logistics performance.

## Summary of Operations

### 1. Data Cleaning
- Removed duplicate records across all tables.  
- Imputed or dropped missing values based on analysis requirements.  
- Standardized categorical columns (e.g., state codes, product categories).  
- Corrected inconsistent date formats and removed outliers in numerical columns.

### 2. Data Transformation
- Calculated **delivery time**: difference between order purchase and delivery dates.  
- Calculated **order approval time**: difference between order creation and approval.  
- Created aggregated metrics:
  - Total sales per product  
  - Revenue per seller  
  - Customer order frequency  
- Merged multiple tables into a **master dataset** for analysis.

### 3. Exploratory Data Analysis (EDA)
- **Sales Analysis**: Top-selling products, total revenue by category, seasonal trends.  
- **Customer Analysis**: Geographic distribution, repeat purchases, review sentiment trends.  
- **Delivery Analysis**: Average delivery times, late deliveries by state, correlation with product type.  
- **Visualizations**: Bar plots, heatmaps, boxplots, and line charts using Seaborn and Matplotlib.

### 4. Data Storage & Dashboard Preparation
- Loaded cleaned and transformed data into **PostgreSQL** for further querying.  
- Prepared datasets for **Power BI dashboards**:
  - Product performance dashboard  
  - Customer behavior dashboard  
  - Delivery efficiency dashboard


