WITH raw_nation AS (
    SELECT * FROM {{ source('tpch_sf1', 'nation') }}
)
SELECT
    N_NATIONKEY AS nation_id,
    TRIM(N_NAME) AS nation_name,
    N_REGIONKEY AS region_id,
    TRIM(N_COMMENT) AS nation_comment
FROM raw_nation
