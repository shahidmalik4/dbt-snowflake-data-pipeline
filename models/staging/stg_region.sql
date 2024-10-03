WITH raw_region AS (
    SELECT * FROM {{ source('tpch_sf1', 'region') }}
)
SELECT
    R_REGIONKEY AS region_id,
    TRIM(R_NAME) AS region_name,
    TRIM(R_COMMENT) AS region_comment
FROM raw_region
