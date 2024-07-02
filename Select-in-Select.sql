-- 1 List each country name where the population is larger than that of 'Russia'.
--  # world(name, continent, area, population, gdp)
    SELECT name FROM world
    WHERE population >
       (SELECT population FROM world
        WHERE name='Russia')
      
-- 2 Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
    Select name 
    from world
    where continent = 'Europe' and gdp/population > 
      ( select gdp/population 
        from world 
        where name = 'United Kingdom') 
-- 3 List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.
    select name, continent 
  from world
  where continent in  
  (select continent from world 
  where name in ('Argentina', 'Australia'))
  order by name
      
-- 4 Which country has a population that is more than United Kingdom but less than Germany? Show the name and the population.
select name, population 
from world
where population > 
      (select population from world where name = 'United Kingdom') 
and 
population <
     (select population from world where name='Germany')

-- 5 
SELECT name, CONCAT(ROUND(population/(SELECT population FROM world
WHERE name = 'Germany')*100,0),'%')
FROM world WHERE continent = 'Europe'

-- 6
select name from world
where gdp > all (select gdp from world where continent = 'Europe')

-- 7
SELECT continent, name, area FROM world x
WHERE area >= ALL
(SELECT area FROM world y
WHERE y.continent=x.continent 
AND area>0)
