SELECT
  switch_name,
  spring_force,
  stem_type,
  stem_material,
  top_housing,
  bottom_housing,
  avg_rating
FROM {{ ref('switch_ratings') }}
ORDER BY avg_rating DESC
LIMIT 5