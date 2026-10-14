SELECT
  DISTINCT(svc_name),
  CASE 
    WHEN svc_name LIKE '%api%' THEN 'api_service'
    WHEN svc_name LIKE '%cache%' THEN 'cache_service'
    WHEN svc_name LIKE '%redis%' THEN 'cache_service'
    ELSE 'other'
  END AS category
FROM svc_health ORDER BY svc_name LIMIT 10;
