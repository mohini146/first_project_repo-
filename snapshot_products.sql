{% snapshot snapshot_products %}
  {{
    config(
      target_schema='snapshots',
      unique_key='product_id',
      strategy='timestamp',
      updated_at='updated_at'
    )
  }}

  SELECT
    product_id,
    name,
    price,
    updated_at
  FROM {{ source('raw', 'products') }}

{% endsnapshot %}
