WITH staging AS (
    SELECT * FROM {{ ref('stg_customer') }}
)
SELECT
    customer_id,
    customer_name,
    customer_address,
    nation_id,
    account_balance,
    market_segment,
    customer_comment
FROM staging
