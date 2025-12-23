select
  shipperid,
  companyname,
  phone
from {{ source('northwind_raw', 'shippers') }}