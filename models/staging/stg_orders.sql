WITH cleaned_orders AS (
    SELECT
        o_orderkey AS order_id,
        o_custkey AS customer_id,
        o_orderstatus AS order_status,
        o_totalprice AS total_price,
        o_orderdate AS order_date,
        o_comment AS order_comment,
        o_shippriority AS ship_priority
    FROM {{ source('tpch_sf1', 'orders') }}
)
SELECT * FROM cleaned_orders
