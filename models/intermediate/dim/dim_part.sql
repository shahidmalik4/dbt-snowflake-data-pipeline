WITH staging AS (
    SELECT * FROM {{ ref('stg_part') }}
)
SELECT
    part_id,
    part_name,
    manufacturer,
    part_type,
    part_size,
    retail_price
FROM staging
