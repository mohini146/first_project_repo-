with source as (
    select * from {{ source('raw', 'movies') }}
)

select
    movieId as movie_id,
    title,
    genres
from source
