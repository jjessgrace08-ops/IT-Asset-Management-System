INSERT INTO Asset
(
    asset_name,
    brand,
    serial_number,
    purchase_date,
    warranty_end,
    status,
    category_id
)
VALUES
(
    'Epson Projector EB-X05',
    'Epson',
    'SN1006',
    '2023-08-01',
    '2026-10-01',
    'Active',
    3
),
(
    'Cisco Router RV340',
    'Cisco',
    'SN1007',
    '2023-09-15',
    '2026-11-15',
    'Active',
    4
);

SELECT 
    asset_id,
    asset_name,
    brand,
    serial_number,
    warranty_end,
    status
FROM asset
WHERE warranty_end <= DATE_ADD(CURDATE(), INTERVAL 6 MONTH)
ORDER BY warranty_end ASC;