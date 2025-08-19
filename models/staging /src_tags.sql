{{ config(materialized='table') }}

select
    tagId as tag_id,
    movieId as movie_id,
    tag,
    userId as user_id,
    timestamp
from {{ source('netflix', 'tags') }}
