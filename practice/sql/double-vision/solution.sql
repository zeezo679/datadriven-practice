select u.email, count(user_id) as occurrence_count, 
min(date(signup_date)) as earliest_signup,
max(date(signup_date)) as latest_signup
from users u
group by u.email
having occurrence_count > 1 and email is not null
