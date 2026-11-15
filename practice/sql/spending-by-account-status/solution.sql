-- grouping by account status
-- count transaction (result must have count > 50)
-- count users (distinct)
-- total revenue (sum(total_amount))
-- join

SELECT
  u.account_status,
  COUNT(t.transaction_id) AS transaction_count,
  COUNT(DISTINCT(u.user_id)) AS user_count,
  SUM(t.total_amount) AS total_revenue
FROM users u left join transactions t
ON u.user_id = t.user_id
GROUP BY account_status
HAVING transaction_count > 50
ORDER BY total_revenue DESC
