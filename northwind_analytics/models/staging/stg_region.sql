select
  regionid,
  regiondescription
from {{ source('northwind_raw', 'region') }}