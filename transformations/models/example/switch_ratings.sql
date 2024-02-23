SELECT
  switch_name,
  spring_force,
  stem_type,
  stem_material,
  top_housing,
  bottom_housing,
  ROUND(AVG(rating), 2) AS avg_rating
FROM {{ ref('switches') }}
GROUP BY
  switch_name,
  spring_force,
  stem_type,
  stem_material,
  top_housing,
  bottom_housing