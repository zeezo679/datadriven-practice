select 
u.user_id, 
u.username, 
count(us.session_id) as session_count,
sum(us.pages_viewed) as total_pages
from users u join user_sessions us 
on u.user_id = us.user_id
where account_status = 'active'
group by u.user_id, u.username
having session_count >= 3 and AVG(us.pages_viewed) >= 25
order by total_pages desc
