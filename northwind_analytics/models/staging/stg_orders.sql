select
  orderid,
  customerid,
  employeeid,
  orderdate,
  requireddate,
  shippeddate,
  shipvia,
  freight,
  shipname,
  shipaddress,
  shipcity,
  shipregion,
  shippostalcode,
  shipcountry
from {{ source('northwind_raw', 'orders') }}