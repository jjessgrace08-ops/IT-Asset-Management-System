SELECT 
    a.asset_id,
    a.asset_name,
    a.brand,
    a.serial_number,
    a.purchase_date,
    a.warranty_end,
    a.status,
    c.category_name
FROM asset a
JOIN assetcategory c ON a.category_id = c.category_id
ORDER BY a.asset_id;