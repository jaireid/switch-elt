WITH switch_ratings AS (
  SELECT
    spring_force,
    stem_type,
    stem_material,
    ROUND(AVG(rating), 2) AS avg_rating
  FROM {{ ref('switches') }}
  WHERE rating IS NOT NULL  -- Exclude NULL ratings
  GROUP BY
    spring_force,
    stem_type,
    stem_material
  ORDER BY avg_rating DESC
)
SELECT * FROM switch_ratings