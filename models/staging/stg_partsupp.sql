WITH raw_partsupp AS (
    SELECT * FROM {{ source('tpch_sf1', 'partsupp') }}
)
SELECT
    PS_PARTKEY AS part_id,
    PS_SUPPKEY AS supplier_id,
    PS_AVAILQTY AS available_qty,
    PS_SUPPLYCOST AS supply_cost,
    TRIM(PS_COMMENT) AS partsupp_comment
FROM raw_partsupp
