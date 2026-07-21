# IT-Asset-Management-System
A MySQL-based IT asset management system for tracking company assets, employee assignments, and warranty status — featuring database design, multi-table JOINs, aggregate reporting, and data seeding best practices.

IT Asset Management System

A MySQL-based IT asset management system for tracking company assets, employee assignments, and warranty status.

This project demonstrates:

Database design & relational database concepts
Primary & Foreign Keys
SQL JOIN (including multi-table JOIN)
Aggregate Functions (COUNT, GROUP BY)
Date-based filtering (warranty tracking)
Data seeding best practices (INSERT IGNORE)
Business Problem

Companies need a simple, reliable way to track their IT assets (laptops, monitors, printers, routers, etc.) — who currently holds each item, when it was assigned, whether it has been returned, and when its warranty is about to expire. This project models that process using a relational database.

Database Structure

Tables:

Employee — company staff who can be assigned assets
AssetCategory — asset categories (Laptop, Monitor, Printer, Router, etc.)
Asset — individual assets, including brand, serial number, purchase date, and warranty
AssetAssignment — tracks which employee is assigned which asset, and when it was assigned/returned

Features
Store employee and asset information
Categorize assets and track their status (Active, Maintenance, etc.)
Assign assets to employees and track return status
Report total assets per status
Report total assets per category
Identify assets with warranties expiring soon
View full assignment history with employee and asset details (multi-table JOIN)

File	Description
01_create_tables.sql	Creates the four core tables and their relationships
02_insert_assetcategory.sql	Seeds asset categories
03_insert_employee.sql	Seeds employee data
04_insert_asset.sql	Seeds asset data
05_view_asset.sql	View all assets with category name (JOIN)
06_asset_status.sql	Count of assets grouped by status
07_expiring_warranty.sql	Assets with warranty expiring within 6 months
08_asset_per_category.sql	Count of assets grouped by category (LEFT JOIN)
09_insert_assetassignment.sql	Seeds asset assignment records
10_asset_assignment_view.sql	Full assignment report: employee, asset, and status (3-table JOIN)

