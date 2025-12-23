select
  territoryid,
  territorydescription,
  regionid
from {{ source('northwind_raw', 'territories') }}