-- Query: Churn breakdown by gender with counts and percentage within each gender
use churn;

SELECT
    gender,                   -- Gender of the customer (Male/Female)
    Churn,                    -- Churn status (Yes/No)
    COUNT(*) AS customers,    -- Number of customers for this gender and churn status
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY gender), 2) AS percentage_within_gender
                               -- Percentage of customers within the same gender
FROM
    cleaned_dataset           -- Main dataset table
GROUP BY
    gender,
    Churn                     -- Group by gender and churn status to get counts per group
ORDER BY
    gender,
    Churn;                    -- Sort output for readability

