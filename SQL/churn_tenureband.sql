
-- Query: Churn breakdown by tenure bands with counts and percentage within each band
use churn;
SELECT
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-1 year'
        WHEN tenure BETWEEN 13 AND 24 THEN '1-2 years'
        WHEN tenure BETWEEN 25 AND 48 THEN '2-4 years'
        WHEN tenure BETWEEN 49 AND 72 THEN '4-6 years'
        ELSE '6+ years'
    END AS tenure_band,        -- Create tenure bands in years
    Churn,                     -- Churn status (Yes/No)
    COUNT(*) AS customers,     -- Number of customers in this tenure band and churn status
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY 
        CASE 
            WHEN tenure BETWEEN 0 AND 12 THEN '0-1 year'
            WHEN tenure BETWEEN 13 AND 24 THEN '1-2 years'
            WHEN tenure BETWEEN 25 AND 48 THEN '2-4 years'
            WHEN tenure BETWEEN 49 AND 72 THEN '4-6 years'
            ELSE '6+ years'
        END), 2) AS percentage_within_band
                               -- Percentage of customers within the same tenure band
FROM
    cleaned_dataset
GROUP BY
    tenure_band,
    Churn                     -- Group by tenure band and churn status
ORDER BY
    tenure_band,
    Churn;                    -- Sort output for readability
