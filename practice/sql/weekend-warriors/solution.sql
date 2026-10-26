SELECT
  event_type,
  COUNT(
    CASE
      WHEN STRFTIME('%w', CAST(event_timestamp AS TIMESTAMP)) IN ('0', '6') THEN 'WEEKEND'
    END
  ) AS weekend_count,
  COUNT(
    CASE
      WHEN STRFTIME('%w', CAST(event_timestamp AS TIMESTAMP)) IN ('1', '2', '3', '4', '5') THEN 'WEEKDAY'
    END
  ) AS weekday_count
FROM event_data
GROUP BY event_type
ORDER BY weekend_count DESC
