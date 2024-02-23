SELECT
  switch_type,
  spring_force,
  stem_type,
  stem_material,
  top_housing,
  bottom_housing,
  avg_rating
FROM {{ ref('switch_ratings') }}
ORDER BY avg_rating DESC
LIMIT 5