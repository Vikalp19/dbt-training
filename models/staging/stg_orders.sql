select a.orderid, a.orderdate, a.shipdate, a.shipmode, a.ordersellingprice - a.ordercostprice as orderprofit,
a.ordersellingprice , a.ordercostprice, c.customername, c.segment, c.country, b.category, b.productname, b.subcategory
from {{ ref('raw_orders') }} a
left join {{ ref('raw_product') }} b on a.productid = b.productid
left join {{ ref('raw_customer') }} c on a.customerid = c.customerid