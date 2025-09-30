-- Query: Churn breakdown by Contract type with counts and percentage within each contract type
use churn;
SELECT
    Contract,                  -- Contract type (Month-to-Month, One year, Two year)
    Churn,                     -- Churn status (Yes/No)
    COUNT(*) AS customers,     -- Number of customers in this contract type and churn status
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY Contract), 2) AS percentage_within_contract
                               -- Percentage of customers within the same contract type
FROM
    cleaned_dataset
GROUP BY
    Contract,
    Churn                     -- Group by contract type and churn status
ORDER BY
    Contract,
    Churn;                    -- Sort output for readability
