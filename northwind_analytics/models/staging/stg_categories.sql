select
  categoryid,
  categoryname,
  description
from {{ source('northwind_raw', 'categories') }}
