-- 02_cleaning_steps.sql
-- Purpose: cleaning step used in the project to remove NULL/blank/'null' MonthlyCharges

USE churn;

-- (Drop previous cleaned table to avoid duplicates)
DROP TABLE IF EXISTS cleaned_dataset;

-- Create cleaned table by filtering out NULL/empty/'null' MonthlyCharges
CREATE TABLE cleaned_dataset AS
SELECT *
FROM book   -- Table name with raw csv data
WHERE MonthlyCharges IS NOT NULL
  AND TRIM(MonthlyCharges) <> ''
  AND LOWER(TRIM(MonthlyCharges)) <> 'null';

-- Validation: confirm cleaned row count
SELECT COUNT(*) AS cleaned_total_rows FROM cleaned_dataset;

--  show a small sample of cleaned data
SELECT * FROM cleaned_dataset
LIMIT 10;
