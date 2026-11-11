select category, count(distinct p.product_id) as products_sold, sum(total_amount) as total_revenue
from transactions t join products p
on t.product_id = p.product_id
where in_stock = 1 and total_amount > 0
group by category
order by total_revenue desc
