SELECT SUM(Value) AS total_yogurt_2022
FROM yogurt_production
WHERE Year = 2022
  AND State_ANSI IN (
      SELECT DISTINCT State_ANSI
      FROM cheese_production
      WHERE Year = 2023
  );
