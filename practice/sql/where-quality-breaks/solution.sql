select tbl_name, count(passed) as failed_checks, count(distinct(rule)) as distinct_rules,
avg(fail_pct) as avg_fail_pct from dq_checks
where passed = 0
group by tbl_name
having avg_fail_pct > 30
order by avg_fail_pct desc;
