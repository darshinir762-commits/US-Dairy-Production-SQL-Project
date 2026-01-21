SELECT s.State,
       COALESCE(c.Value, 0) AS cheese_production_apr_2023
FROM state_lookup s
LEFT JOIN cheese_production c
  ON s.State_ANSI = c.State_ANSI
  AND c.Year = 2023
  AND c.Period = 'APR';
