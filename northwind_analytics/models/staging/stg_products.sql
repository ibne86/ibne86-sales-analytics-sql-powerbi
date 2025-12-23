select
  productid,
  productname,
  supplierid,
  categoryid,
  quantityperunit,
  unitprice,
  unitsinstock,
  unitsonorder,
  reorderlevel,
  discontinued
from {{ source('northwind_raw', 'products') }}