WITH raw_supplier AS (
    SELECT * FROM {{ source('tpch_sf1', 'supplier') }}
)
SELECT
    S_SUPPKEY AS supplier_id,
    TRIM(S_NAME) AS supplier_name,
    TRIM(S_ADDRESS) AS supplier_address,
    S_NATIONKEY AS nation_id,
    S_ACCTBAL AS account_balance
FROM raw_supplier
