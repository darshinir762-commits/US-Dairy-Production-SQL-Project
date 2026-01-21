SELECT DISTINCT s.State
FROM state_lookup s
JOIN milk_production m
  ON s.State_ANSI = m.State_ANSI
JOIN yogurt_production y
  ON s.State_ANSI = y.State_ANSI
WHERE m.Year = 2023;
