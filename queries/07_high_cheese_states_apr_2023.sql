SELECT DISTINCT s.State,
       c.Value AS cheese_production_apr_2023
FROM cheese_production c
JOIN state_lookup s
  ON c.State_ANSI = s.State_ANSI
WHERE c.Year = 2023
  AND c.Period = 'APR'
  AND c.Value > 10000000;
