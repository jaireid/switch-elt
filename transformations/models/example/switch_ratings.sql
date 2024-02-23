SELECT
  switch_type,
  spring_force,
  stem_type,
  stem_material,
  top_housing,
  bottom_housing,
  AVG(rating) AS avg_rating
FROM {{ ref('switches') }}
GROUP BY
  switch_type,
  spring_force,
  stem_type,
  stem_material,
  top_housing,
  bottom_housing