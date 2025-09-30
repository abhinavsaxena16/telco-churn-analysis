-- Query: Churn breakdown by MonthlyCharges bands with counts and percentage within each band
use churn;
SELECT
    CASE 
        WHEN MonthlyCharges BETWEEN 0 AND 35 THEN 'Low (0-35)'
        WHEN MonthlyCharges > 35 AND MonthlyCharges <= 70 THEN 'Medium (35-70)'
        ELSE 'High (70+)'
    END AS charge_band,        -- Create MonthlyCharges bands
    Churn,                     -- Churn status (Yes/No)
    COUNT(*) AS customers,     -- Number of customers in this charge band and churn status
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (
        PARTITION BY 
        CASE 
            WHEN MonthlyCharges BETWEEN 0 AND 35 THEN 'Low (0-35)'
            WHEN MonthlyCharges > 35 AND MonthlyCharges <= 70 THEN 'Medium (35-70)'
            ELSE 'High (70+)'
        END
    ), 2) AS percentage_within_band
                               -- Percentage of customers within the same charge band
FROM
    cleaned_dataset
GROUP BY
    charge_band,
    Churn                     -- Group by charge band and churn status
ORDER BY
    charge_band,
    Churn;                    -- Sort output for readability
