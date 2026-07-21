SELECT 
    aa.assignment_id,
    e.employee_name,
    e.position,
    a.asset_name,
    a.serial_number,
    aa.assigned_date,
    aa.returned_date,
    aa.assignment_status
FROM assetassignment aa
JOIN employee e ON aa.employee_id = e.employee_id
JOIN asset a ON aa.asset_id = a.asset_id
ORDER BY aa.assigned_date;