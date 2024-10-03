WITH staging AS (
    SELECT * FROM {{ ref('stg_lineitem') }}
)
SELECT
    order_id,
    part_id,
    supplier_id,
    quantity,
    extended_price,
    discount,
    ship_date
FROM staging
