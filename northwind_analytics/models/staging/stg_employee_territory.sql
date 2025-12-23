select
  employeeid,
  territoryid
from {{ source('northwind_raw', 'employee_territory') }}
