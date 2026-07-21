SELECT 
    status,
    COUNT(*) AS total_asset
FROM asset
GROUP BY status
ORDER BY total_asset DESC;