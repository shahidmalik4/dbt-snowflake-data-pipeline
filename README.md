# Snowflake + dbt Project

🚀 A data transformation project using dbt and Snowflake with Snowflake's TPCH_SF1 sample dataset. This project organizes data into staging, intermediate, and analytics layers using dbt models.

## 📚 Project Overview

This project showcases the power of dbt (Data Build Tool) for data transformation within Snowflake, leveraging Snowflake's sample TPCH_SF1 data. The goal is to build well-structured staging, intermediate, and analytics layers for effective reporting and data analysis.

## 📊 TPCH_SF1 Data

The TPCH_SF1 schema is a sample dataset provided by Snowflake. It includes tables such as:

- `customer`
- `lineitem`
- `nation`
- `orders`
- `part`
- `partsupp`
- `region`
- `supplier`

These tables serve as the foundation for the transformations.

## 🛠 Tech Stack

- **Snowflake**: Cloud data platform used for storing and querying data.
- **dbt**: Used for building and transforming data models in Snowflake.
  
## 📁 Directory Structure

The project follows a clear structure to organize dbt models:

```
├── README.md
├── analyses
├── dbt_project.yml
├── logs
├── macros
├── models
│   ├── analytics
│   │   ├── 3_month_rolling_sales_by_supplier.sql
│   │   ├── YtY_growth_in_revenue.sql
│   │   ├── avg_order_values.sql
│   │   ├── avg_time_to_ship.sql
│   │   ├── customers_by_order_frequency.sql
│   │   ├── revenue_per_customer_over_time.sql
│   │   ├── top_selling_products_by_quantity.sql
│   │   ├── top_suppliers_by_profit.sql
│   │   ├── total_part_sales.sql
│   │   └── total_revenue_by_supplier.sql
│   ├── intermediate
│   │   ├── dim
│   │   │   ├── dim_customer.sql
│   │   │   ├── dim_nation.sql
│   │   │   ├── dim_part.sql
│   │   │   ├── dim_region.sql
│   │   │   └── dim_supplier.sql
│   │   └── fact
│   │       ├── fact_lineitem.sql
│   │       ├── fact_orders.sql
│   │       └── fact_partsupp.sql
│   ├── sources.yml
│   └── staging
│       ├── stg_customer.sql
│       ├── stg_lineitem.sql
│       ├── stg_nation.sql
│       ├── stg_orders.sql
│       ├── stg_part.sql
│       ├── stg_partsupp.sql
│       ├── stg_region.sql
│       └── stg_supplier.sql
├── requirements.txt
├── seeds
├── snapshots
├── target
└── tests
```


### Folder Explanation

- **staging**: Contains raw tables loaded directly from the TPCH_SF1 schema. These are used as the base layer for further transformations.
- **intermediate**: Includes the **dim** (dimension) and **fact** (fact) tables. This layer contains clean, enriched tables for reporting.
- **analytics**: Holds final tables for analytical insights and reporting purposes.


## 🧱 Key Concepts

- **Staging Models**: Initial layer of raw data directly from Snowflake. These models serve as the first step in the data pipeline, pulling data from source tables without any transformations.
- **Intermediate Models**: Cleaned and transformed data, including dimension and fact tables. These models process the raw data from the staging layer to create structured and meaningful datasets for analysis.
- **Analytics Models**: The final models where business logic is applied for reporting and insights. These models utilize the intermediate data and are designed to efficiently build and update large datasets by processing only new or changed data, making them suitable for large datasets and improving performance.


## 🚀 How to Run the Project

To set up and run this project locally, follow the steps below.

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/shahidmalik4/dbt-snowflake-data-pipeline
    cd dbt-snowflake-data-pipeline
    ```

2. **Install Requirements**:
   ```bash
   pip install requirements.txt
   ```

3. **Run dbt Models**:
   ```bash
   dbt debug
   dbt run
   ```









