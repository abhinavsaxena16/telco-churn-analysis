-- 01_extract_raw.sql
-- Purpose: verify raw import (the CSV was imported via MySQL Workbench / import wizard
-- into a database named `churn` and a table named `book`).

-- Use the project database
USE churn;

-- Quick checks on the imported raw table 'book'

-- 1) Count rows in the raw import
SELECT COUNT(*) AS raw_total_rows FROM book;

-- 2) Inspect first 10 rows to confirm correct import
SELECT * FROM book
LIMIT 10;
