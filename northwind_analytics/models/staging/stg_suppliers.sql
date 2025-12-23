select
  supplierid,
  companyname,
  contactname,
  contacttitle,
  address,
  city,
  region,
  postalcode,
  country,
  phone,
  fax,
  homepage
from {{ source('northwind_raw', 'suppliers') }}
