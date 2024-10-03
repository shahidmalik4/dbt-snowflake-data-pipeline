WITH staging AS (
    SELECT * FROM {{ ref('stg_region') }}
)
SELECT
    region_id,
    region_name,
    region_comment
FROM staging
