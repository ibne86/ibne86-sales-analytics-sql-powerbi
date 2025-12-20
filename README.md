# Retail Analytics — PostgreSQL + dbt Core + Power BI + R stats

## Dataset
**Dataset:** Northwind (multi-table retail; https://www.kaggle.com/datasets/matthuan/northwind-dataset/data).  
**DB:** PostgreSQL (pgAdmin).  
**Tables used:** categories, customers, employees, employee_territories, order_details, orders, products, region, shippers, suppliers, territories.

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