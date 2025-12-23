select
  employeeid,
  lastname,
  firstname,
  title,
  titleofcourtesy,
  birthdate,
  hiredate,
  address,
  city,
  region,
  country,
  homephone,
  salary,
  extra
from {{ source('northwind_raw', 'employees') }}