INSERT INTO Asset
(
    asset_name, brand, serial_number, purchase_date, warranty_end, status, category_id
)
VALUES
(
    'ThinkPad T14', 'Lenovo', 'SN1001', '2025-01-15', '2028-01-15', 'Active', 1
),
(
    'MacBook Air M2', 'Apple', 'SN1002', '2025-03-20', '2028-03-20', 'Maintenance', 1
),
(
    'Dell Monitor P2422H', 'Dell', 'SN1003', '2025-02-10', '2028-02-10', 'Active', 2
),
(
    'Logitech MX Keys', 'Logitech', 'SN1004', '2025-04-01', '2028-04-01', 'Active', 3
),
(
    'HP LaserJet Pro', 'HP', 'SN1005', '2025-05-01', '2028-05-01', 'Active', 4
);

SELECT * FROM asset;