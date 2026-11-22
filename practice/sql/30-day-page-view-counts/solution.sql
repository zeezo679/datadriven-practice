select user_id , count(page_views)
from page_views
where viewed_at BETWEEN '2025-01-01 00:00:00' 
AND '2025-12-29 00:00:00'
group by user_id
