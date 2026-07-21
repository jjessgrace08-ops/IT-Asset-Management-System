SELECT * FROM assetassignment;

SELECT * FROM employee LIMIT 5;

INSERT INTO assetassignment
(
    employee_id,
    asset_id,
    assigned_date,
    returned_date,
    assignment_status
)
VALUES
(
    1,
    1,
    '2025-01-20',
    NULL,
    'Assigned'
),
(
    2,
    2,
    '2025-03-25',
    NULL,
    'Assigned'
),
(
    3,
    3,
    '2025-02-15',
    '2026-01-10',
    'Returned'
),
(
    4,
    4,
    '2025-04-05',
    NULL,
    'Assigned'
),
(
    5,
    5,
    '2025-05-05',
    NULL,
    'Assigned'
),
(
    3,
    6,
    '2025-08-10',
    NULL,
    'Assigned'
),
(
    2,
    7,
    '2025-09-20',
    NULL,
    'Assigned'
);

SELECT * FROM assetassignment;