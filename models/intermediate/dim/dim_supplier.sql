WITH staging AS (
    SELECT * FROM {{ ref('stg_supplier') }}
)
SELECT
    supplier_id,
    supplier_name,
    supplier_address,
    nation_id,
    account_balance
FROM staging
