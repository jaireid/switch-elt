WITH best_rated_switch_characteristics AS (
  SELECT *
  FROM {{ ref('switch_ratings') }}
  ORDER BY avg_rating DESC
  LIMIT 10
)
SELECT * FROM best_rated_switch_characteristics