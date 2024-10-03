WITH staging AS (
    SELECT * FROM {{ ref('stg_partsupp') }}
)
SELECT
    part_id,
    supplier_id,
    available_qty,
    supply_cost,
    partsupp_comment
FROM staging
