{% snapshot snp_marvel %}
    {{
        config(
            target_schema='snp_schema',
            unique_key='cast_id',
            strategy='timestamp',
            invalidate_hard_deletes=False,
            updated_at='date_updated'
        )
    }}

    select *,
    '{{ invocation_id }}' as batch_id from {{ source('snowflake_raw_public', 'marvel') }}
 {% endsnapshot %}