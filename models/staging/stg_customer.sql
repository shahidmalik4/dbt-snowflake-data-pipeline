WITH raw_customer AS (
    SELECT * FROM {{ source('tpch_sf1', 'customer') }}
)
SELECT
    C_CUSTKEY AS customer_id,
    TRIM(C_NAME) AS customer_name,
    TRIM(C_ADDRESS) AS customer_address,
    C_NATIONKEY AS nation_id,
    C_ACCTBAL AS account_balance,
    TRIM(C_MKTSEGMENT) AS market_segment,
    TRIM(C_COMMENT) AS customer_comment
FROM raw_customer
