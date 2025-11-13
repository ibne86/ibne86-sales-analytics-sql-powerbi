# Retail Analytics — SQL (PostgreSQL) + Power BI + R stats

## Dataset
**Dataset:** Northwind (multi-table retail; link to Kaggle).  
**DB:** PostgreSQL (pgAdmin).  
**Tables used:** customers, orders, order_details, products, categories, suppliers, employees.

## Repo layout
- `sql/` – sanity checks, cleaning, analysis queries
- `r/` – conditional probabilities + hypothesis tests (t-test / prop test) + Analysis between different variables +  linear regression
- `powerbi/` – report (`.pbix`) or screenshots in `figs/`
- `data/raw/` – CSVs

## How to run (PostgreSQL + pgAdmin)

### 1) Create database
pgAdmin → **Databases → Create → Database…** → name: `northwind`  
_or SQL:_
```sql
CREATE DATABASE northwind;```

## Key Insights
- …
