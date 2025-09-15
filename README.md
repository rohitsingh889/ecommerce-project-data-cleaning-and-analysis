# E-commerce Sales Data Analysis Project
![Logo](https://github.com/rohitsingh889/ecommerce-project-data-cleaning-and-analysis/blob/main/logo.webp)
## Project Overview
This project focuses on **cleaning, transforming, and analyzing a multi-table e-commerce dataset from Olist**, a Brazilian marketplace. The goal is to uncover insights about **customer behavior, product performance, and delivery efficiency** through **Python-based data wrangling, feature engineering, and exploratory data analysis (EDA)**.  

Additionally, a **basic ETL pipeline** has been implemented to load the cleaned data into **PostgreSQL**, making it **ready for advanced SQL queries, aggregations, and interactive dashboards in Power BI**.  

During the project, I also **designed, wrote, and solved 40+ SQL queries** covering analytics, aggregations, delivery performance, sales trends, and customer insights.

## Project Motivation
The goal of this project is to simulate a real-world data engineering workflow by transforming raw e-commerce data into a structured format suitable for analytics and dashboards. 
It demonstrates the end-to-end process of data cleaning, transformation, loading, and visualization to extract actionable business insights.

## Features
- **Data Cleaning**: Removed duplicates, handled missing values, standardized categorical columns, and addressed inconsistencies and outliers.  
- **Data Transformation**: Calculated delivery times, order approval times, and aggregated sales metrics by product, seller, and region.  
- **Exploratory Data Analysis (EDA)**: Visualized trends using **Seaborn** and **Matplotlib**, including sales, customer behavior, product performance, and delivery efficiency.  
- **Data Storage & ETL**: Implemented a **basic ETL pipeline** to ingest CSV data, transform it, and load into **PostgreSQL** for querying and dashboarding.  
- **SQL Analytics**: 40+ queries solving insights for sales, customers, deliveries, products, payments, and reviews.  
- **Dashboard Ready**: Cleaned and structured dataset ready for **Power BI** dashboards.
## Dataset Details
- **Source**: [Kaggle - Olist Brazilian E-commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce)  
- **Format**: CSV  
- **License**: Public  
- **Description**: This dataset contains multiple tables representing customers, orders, payments, products, sellers, reviews, and geolocation data for a Brazilian e-commerce platform. It is ideal for analyzing sales trends, customer behavior, and logistics performance.

## 🗂️ Database Schema

![Database Schema](https://github.com/rohitsingh889/ecommerce-project-data-cleaning-and-analysis/blob/main/schema.png)

**Highlights:**
- Fact tables: `orders`, `order_items`, `payments`
- Dimension tables: `customers`, `products`, `sellers`, `reviews`
- Proper **foreign key relationships** ensure referential integrity.

---

## Summary of Operations

### 1. Data Cleaning
- Removed duplicate records across all tables.  
- Imputed or dropped missing values based on analysis requirements.  
- Standardized categorical columns (e.g., state codes, product categories).  
- Corrected inconsistent date formats and removed outliers in numerical columns.

## 🗂️ Data Cleaning Steps..

![Data Cleaning Steps](https://github.com/rohitsingh889/ecommerce-project-data-cleaning-and-analysis/blob/main/End-to-End-Data-Cleansing-infographics.png)


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

![Logo2](https://github.com/rohitsingh889/ecommerce-project-data-cleaning-and-analysis/blob/main/logo2.png)

### 4. ETL Pipeline

The project includes a **basic ETL (Extract, Transform, Load) pipeline** designed to handle multiple CSV datasets and prepare them for analytics and dashboarding.  

**Pipeline Overview:**

- **Extract**: Raw CSV files containing customers, orders, order items, payments, products, sellers, and reviews are loaded into memory for processing.  

- **Transform**: 
  - Data cleaning is applied, including removal of duplicates, handling missing values, and standardizing categorical columns.  
  - Feature engineering is performed to calculate delivery time, order approval time, total sales per product, revenue per seller, and customer order frequency.  
  - Tables are merged to create a **master dataset** suitable for analysis and dashboarding.  

- **Load**: The cleaned and transformed datasets are prepared to be loaded into a **PostgreSQL database** with proper table structures and foreign key relationships. This ensures referential integrity and enables SQL analytics and integration with Power BI dashboards.  

The ETL pipeline is reusable and can ingest new data, making it **scalable and suitable for production-ready workflows**.

### 5. SQL Analytics

The project includes **40+ SQL queries** designed and solved to extract actionable insights from the e-commerce dataset.  

Key areas covered by the queries:

- **Top product categories, sellers, and cities**  
- **Payment type and revenue analysis**  
- **Average delivery time, order approval time, and order value**  
- **Review score distribution and repeat customers**  
- **Freight cost, return rate, and orders involving multiple sellers**  

These queries are **dashboard-ready** and support analytics for business decision-making in **product strategy, marketing, and logistics**.  

> Note: All queries are written for **PostgreSQL** and are part of the ETL + analytics workflow in the project.

### 6. Dashboard Preparation
The cleaned and transformed datasets are fully prepared and ready for creating interactive dashboards in Power BI.
- **Power BI Dashboards**:
  - Product Performance
  - Customer Behavior
  - Delivery Efficiency

-Power-BI schema of the datasets....
![Screenshot](https://github.com/rohitsingh889/ecommerce-project-data-cleaning-and-analysis/blob/main/Screenshot%202025-09-15%20153628.png)



## Tools & Libraries

- **Python**: pandas, numpy, matplotlib, seaborn
- **SQL**: PostgreSQL
- **BI**: Power BI
- **Other**: Kaggle API, gdown


### ETL Libraries & Tools

- pandas          # Data manipulation and analysis
- psycopg2        # PostgreSQL database connection
- SQLAlchemy      # Database engine for SQL operations




### Insights

- Identify **top-selling products, revenue-driving categories, and high-value customers**.  
- Analyze **delivery performance** to optimize logistics and reduce delays.  
- Examine **payment method trends** and customer retention patterns.  
- Measure **freight costs, return rates, and repeat purchase behavior**.  
- Provide **data-driven recommendations** for sales, marketing, and operational improvements.
- The cleaned and transformed datasets are fully prepared and ready for creating interactive dashboards in Power BI
- Support creation of **Power BI dashboards** for business intelligence and visual analytics.

### Skills Demonstrated
- **Python**: pandas, numpy, matplotlib, seaborn for data wrangling and visualization
- **SQL**: PostgreSQL queries for analytics, aggregations, and reporting
- **ETL & Data Engineering**: building reusable pipelines, data cleaning, feature engineering
- **BI Tools**: Power BI dashboard preparation and interactive visualization


## Author

**Rohit Raj Singh**  
This project is part of my portfolio, showcasing **data engineering skills** applied to the [Olist Brazilian E-commerce Dataset](https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce?utm_source=chatgpt.com).

This project demonstrates practical experience in:

* **Data ingestion** of multiple raw CSV datasets (orders, customers, products, payments, reviews).  
* **Data cleaning & transformation**: handling missing values, duplicates, outliers, and creating new features (e.g., delivery time, approval time, aggregated sales metrics).  
* **Building a structured data pipeline**: ETL workflow that transforms raw files into a cleaned, analysis-ready format.  
* **Loading into PostgreSQL**: inserting transformed data into a data warehouse schema with fact and dimension tables.  
* **Exploratory Data Analysis (EDA)**: visualizing sales trends, customer behavior, and delivery efficiency to validate data quality and extract actionable insights.  
* **SQL querying & aggregations**: writing 40+ SQL queries to support analytics, reporting, and Power BI dashboards for business decision-making.  
* **Dashboard preparation**: preparing datasets for interactive visualizations, KPIs, and trend analysis in Power BI.

This work reflects the type of **end-to-end data engineering expertise** needed to design, clean, transform, and deliver data pipelines that power analytics and business intelligence solutions.  

If you have any questions, suggestions, or are interested in collaborating, I’d love to connect—feel free to reach out!

**LinkedIn:** [Connect with me professionally](https://www.linkedin.com/in/rohit-raj-singh-3030172a4?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app)

