select
  orderid,
  productid,
  unitprice,
  quantity,
  discount
from {{ source('northwind_raw', 'order_details') }}