{{ config(
    materialized='table'
) }}

select * from eric_jang.recommendation.asset_features
