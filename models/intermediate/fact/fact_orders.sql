WITH staging AS (
    SELECT * FROM {{ ref('stg_orders') }}
)
SELECT
    order_id,
    customer_id,
    order_status,
    total_price,
    order_date,
    order_comment
FROM staging
