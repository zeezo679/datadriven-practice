select product_name, sum(total_amount) as total_amount from 
products join transactions on products.product_id = transactions.product_id
group by product_name
order by total_amount desc
limit 5;
