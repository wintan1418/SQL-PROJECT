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
SELECT name FROM world
WHERE name LIKE 'Y%'

-- solution 5

SELECT name FROM world
WHERE name LIKE '%y'

--  solution 6

SELECT name FROM world
WHERE name LIKE '%x%'

--   solution 7

SELECT name FROM world
WHERE name LIKE '%land'

--   solution 8

SELECT name FROM world
WHERE name LIKE 'c%ia'

--   solution 9

SELECT name FROM world
WHERE name LIKE '%oo%'

--   solution 10

SELECT name FROM world
WHERE name LIKE '%a%a%a%'

--   solution 11

SELECT name FROM world
WHERE name LIKE '_t%'
ORDER BY name

-- solution 12

SELECT name FROM world
WHERE name LIKE '%o__o%'

--  solution 13

SELECT name FROM world
WHERE name LIKE '____'

--  solution 14

SELECT name
FROM world
WHERE name LIKE capital

--  solution 15
SELECT name 
FROM world
WHERE capital LIKE concat(name, ' City')

--  solution 16
SELECT capital, name 
FROM world
WHERE capital LIKE concat ('%' , name, '%')

--  solution 17

SELECT capital, name 
FROM world
WHERE capital LIKE concat(name, '%') AND capital <> name
