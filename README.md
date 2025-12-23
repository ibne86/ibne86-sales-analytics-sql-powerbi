# Retail Analytics — PostgreSQL + dbt Core + Power BI + R stats

## Progress (so far)
- Set up a dbt Core project (`northwind_analytics`) connected to PostgreSQL (Northwind loaded from Kaggle CSVs).
- Defined dbt sources for the raw Northwind tables (so models reference data via `source()`).
- Built the initial staging layer (11 staging models) to standardize column naming and prepare clean, consistent tables/views for analytics.

## Next
- Add data quality tests in dbt (primary keys, foreign keys, not-null, uniqueness, relationships) based on the ER diagram.
- Fix/standardize data types in staging (e.g., cast date fields like `requireddate`/`shippeddate`).
- Finalize type cleaning (e.g., date fields) and build marts (facts/dimensions) for Power BI dashboards and R-based statistical analysis.

## Dataset
**Dataset:** Northwind (multi-table retail; https://www.kaggle.com/datasets/matthuan/northwind-dataset/data).  
**DB:** PostgreSQL (pgAdmin).  
**Tables used:** categories, customers, employees, employee_territories, order_details, orders, products, region, shippers, suppliers, territories.

## Data model (ER Diagram)
![Northwind ER diagram](figs/northwind-erd.png)

## dbt Lineage (DAG)
![dbt lineage](figs/dbt-lineage-staging.png)

## Data quality checks (dbt tests)
This project uses dbt tests to validate both structural integrity (PK/FK) and basic business rules.

**Key integrity**
- Primary keys: `not_null` + `unique` (e.g., `stg_orders.order_id`)
- Foreign keys: `not_null` + `relationships` (e.g., `stg_orders.customer_id → stg_customers.customer_id`)

**Business rules**
- `required_date >= order_date`
- `shipped_date >= order_date`
- (More rules will be added as marts/dimensions are built)

## Repo layout
- `northwind_analytics/` – dbt Core project (sources, models, tests, docs)
- `sql/` – sanity checks / ad-hoc analysis queries (optional, not the dbt models)
- `r/` – conditional probabilities + hypothesis tests (t-test / prop test) + analysis between variables + linear regression
- `powerbi/` – report (`.pbix`) or screenshots exported to `figs/`
- `figs/` – images/screenshots for README (charts, dbt docs lineage, Power BI screenshots)
- `data/raw/` – CSVs (kept out of Git)

## How to run (PostgreSQL + pgAdmin + dbt Core)

### 1) Create database
pgAdmin → **Databases → Create → Database…** → name: `northwind`

### 2) Import the CSV tables into Postgres
Import the Kaggle CSVs into the `public` schema (tables listed above).

### 3) Run dbt (build clean models + tests)
From the repo root:
```bash
cd northwind_analytics
dbt debug
dbt run
dbt test