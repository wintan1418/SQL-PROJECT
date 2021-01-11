-- /sql solutions fromm zoo tutoporial 1/

-- solution 1

SELECT population FROM world
  WHERE name = 'germany'

--   solution2

SELECT name, population FROM world
  WHERE name IN ( 'Sweden', 'Norway','Denmark');

--   solution 3

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

--   solution 4
SELECT name, continent, population FROM world