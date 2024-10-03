WITH raw_lineitem AS (
    SELECT * FROM {{ source('tpch_sf1', 'lineitem') }}
)
SELECT
    L_ORDERKEY AS order_id,
    L_PARTKEY AS part_id,
    L_SUPPKEY AS supplier_id,
    L_QUANTITY AS quantity,
    L_EXTENDEDPRICE AS extended_price,
    L_DISCOUNT AS discount,
    L_SHIPDATE AS ship_date
FROM raw_lineitem
