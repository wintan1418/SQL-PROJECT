-- 1. larger than Russia
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')


-- 2. Richer than  the UK
select name from world
where continent = 'Europe' 
And gdp/population > (Select gdp/population from world where name = 'United Kingdom')


-- 3. Neighbours of Argentina & Australia
select name, continent from world
where continent In (select continent from world
where name = 'Argentina' or name = 'Australia'
) order by name


-- 4. Btw Canada & Poland
SELECT name, population FROM world 
WHERE population > (SELECT population FROM world WHERE name = 'Canada') 
AND population < (SELECT population FROM world WHERE name = 'Poland');


-- 5. % of Germany
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world 
    WHERE name = 'Germany')*100), '%') FROM world WHERE continent = 'Europe';


-- 6. Bigger than every country in Europe
select name from world 
where gdp > All(select gdp from world where gdp > 0 and continent = 'Europe')

-- 7. Largest in each continent
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)

-- 8. First country of each continent (alphabetically)
select continent, name from world x
    where name <= All(select name from world y where x.continent = y.continent) 


-- 9. Difficult Questions 
SELECT name, continent, population FROM world 
    WHERE continent IN (SELECT continent FROM world  x WHERE 25000000 >= (SELECT MAX(population) FROM world y 
        WHERE x.continent = y.continent));


-- 10.
select name, continent from world x 
    where population > All(select 3*population from world y 
        where x.continent = y.continent and x.name <> y.name) 