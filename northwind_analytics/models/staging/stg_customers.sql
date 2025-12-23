select
  customerid,
  companyname,
  contactname,
  contacttitle,
  address,
  city,
  region,
  postalcode,
  country,
  phone,
  fax
from {{ source('northwind_raw', 'customers') }}
