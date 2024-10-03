WITH raw_part AS (
    SELECT * FROM {{ source('tpch_sf1', 'part') }}
)
SELECT
    P_PARTKEY AS part_id,
    TRIM(P_NAME) AS part_name,
    TRIM(P_MFGR) AS manufacturer,
    TRIM(P_TYPE) AS part_type,
    P_SIZE AS part_size,
    P_RETAILPRICE AS retail_price
FROM raw_part
