select product_name, category, price , (select avg(price) from products) as catalog_avg
from products
group by product_name, category, price
having price > (select avg(price) from products)
order by price desc
