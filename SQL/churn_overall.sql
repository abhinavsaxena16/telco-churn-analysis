-- Query: Overall churn summary with counts and percentage
use churn;
SELECT
    Churn,                     -- Churn status (Yes/No)
    COUNT(*) AS customers,     -- Number of customers with this churn status
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS percentage_overall
                               -- Percentage of customers across the entire dataset
FROM
    cleaned_dataset
GROUP BY
    Churn                     -- Group by churn status to get counts
ORDER BY
    Churn;                    -- Sort output for readability
