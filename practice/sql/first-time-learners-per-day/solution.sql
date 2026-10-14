WITH first_sessions AS (
  select user_id , 
  min(date(session_start)) as first_session_date 
  from user_sessions
  group by user_id
)

select first_session_date , count(user_id) as new_user_count from first_sessions 
group by first_session_date
order by first_session_date
