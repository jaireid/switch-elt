SELECT
  s.switch_id,
  s.switch_name,
  s.manufacturer,
  s.spring_force,
  s.stem_type,
  s.stem_material,
  s.top_housing,
  s.bottom_housing,
  s.own_status
FROM {{ ref('switches') }} s
JOIN {{ ref('best_rated_switch_characteristics') }} b
  ON s.spring_force = b.spring_force
  AND s.stem_type = b.stem_type
  AND s.stem_material = b.stem_material
WHERE s.own_status = FALSE
LIMIT 3