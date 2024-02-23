SELECT
  s.switch_id,
  s.switch_name,
  s.manufacturer,
  s.spring_force,
  s.stem_type,
  s.stem_material,
  s.top_housing,
  s.bottom_housing,
  s.rating,
  s.own_status
FROM {{ ref('switches') }} s
JOIN {{ ref('best_rated_switch_characteristics') }} b
  ON s.switch_name = b.switch_name
  AND s.spring_force = b.spring_force
  AND s.stem_type = b.stem_type
  AND s.stem_material = b.stem_material
  AND s.top_housing = b.top_housing
  AND s.bottom_housing = b.bottom_housing
WHERE s.own_status = FALSE