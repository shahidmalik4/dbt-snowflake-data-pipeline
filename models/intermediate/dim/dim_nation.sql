WITH staging AS (
    SELECT * FROM {{ ref('stg_nation') }}
)
SELECT
    nation_id,
    nation_name,
    region_id,
    nation_comment
FROM staging
