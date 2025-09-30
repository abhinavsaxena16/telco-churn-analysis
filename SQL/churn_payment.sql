-- Query: Churn breakdown by PaymentMethod with counts and percentage within each payment type
use churn;
SELECT
    PaymentMethod,             -- Payment method type (e.g., Electronic check, Mailed check, Bank transfer, Credit card)
    Churn,                     -- Churn status (Yes/No)
    COUNT(*) AS customers,     -- Number of customers in this payment method and churn status
    ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY PaymentMethod), 2) AS percentage_within_method
                               -- Percentage of customers within the same payment method
FROM
    cleaned_dataset
GROUP BY
    PaymentMethod,
    Churn                     -- Group by payment method and churn status
ORDER BY
    PaymentMethod,
    Churn;                    -- Sort output for readability
