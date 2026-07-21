USE it_asset_management;

CREATE TABLE Employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    position VARCHAR(100) NOT NULL
);

CREATE TABLE AssetCategory (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Asset (
    asset_id INT AUTO_INCREMENT PRIMARY KEY,
    asset_name VARCHAR(100) NOT NULL,
    brand VARCHAR(100) NOT NULL,
    serial_number VARCHAR(100) NOT NULL UNIQUE,
    purchase_date DATE,
    warranty_end DATE,
    status ENUM('Active','Maintenance','Broken','Retired') DEFAULT 'Active',
    category_id INT NOT NULL,

    CONSTRAINT fk_asset_category
    FOREIGN KEY (category_id)
    REFERENCES AssetCategory(category_id)
);

CREATE TABLE AssetAssignment (
    assignment_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT NOT NULL,
    asset_id INT NOT NULL,
    assigned_date DATE NOT NULL,
    returned_date DATE,
    assignment_status ENUM('Assigned','Returned') DEFAULT 'Assigned',

    CONSTRAINT fk_assignment_employee
    FOREIGN KEY (employee_id)
    REFERENCES Employee(employee_id),

    CONSTRAINT fk_assignment_asset
    FOREIGN KEY (asset_id)
    REFERENCES Asset(asset_id)
);

DESC Employee;
DESC AssetCategory;
DESC Asset;
DESC AssetAssignment;