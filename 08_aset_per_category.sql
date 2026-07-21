SELECT 
    c.category_name,
    COUNT(a.asset_id) AS total_asset
FROM assetcategory c
LEFT JOIN asset a ON c.category_id = a.category_id
GROUP BY c.category_name
ORDER BY total_asset DESC;