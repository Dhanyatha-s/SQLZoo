-- 1 show the name, continent and population of all countries.

    SELECT name, continent, population
    FROM world

-- 2 Show the name for the countries that have a population of at least 200 million.
--   200 million is 200000000, there are eight zeros.
    select name 
    from world
    where population >= 200000000

-- 3 Give the name and the per capita GDP for those countries with a population of at least 200 million
    select name, gdp/population as per_capita_gdp 
    from world
    where population >= 200000000

-- 4 Show the name and population in millions for the countries of the continent 'South America'. 
--   Divide the population by 1000000 to get population in millions.
    select name, population/1000000 as poplu_in_millions 
    from world
    where continent = 'South America'
      
-- 5 Show the name and population for France, Germany, Italy
    select name, population 
    from world
    where name in ('France', 'Germany', 'Italy');

-- 6 Show the countries which have a name that includes the word 'United'
    select name 
    from world
    where name like '%United%'

-- 7 Two ways to be big: A country is big if it has an area of more than 3 million sq km or 
--   it has a population of more than 250 million.
--   Show the countries that are big by area or big by population. Show name, population and area.
      select name, population, area 
      from world
      where area >3000000 or population >250000000

-- 8 Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. 
--   Show name, population and area.
    select name, population, area
    from world
    where area >3000000 xor population >250000000

-- 9 Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'.
--   Use the ROUND function to show the values to two decimal places.
    select name,round(population/1000000,2) , round(gdp/1000000000,2) 
    from world
    where continent ='South America'

-- 10 Show per-capita GDP for the trillion dollar countries to the nearest $1000.
    select name, round(gdp/population, -3) as trillion_gdp 
    from world
    where gdp >= 1000000000000

-- 11 Show the name and capital where the name and the capital have the same number of characters.
    select name, capital 
    from world
    where length(name) = length(capital)

-- 12 Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word.
    SELECT name, capital
    FROM world
    where left(name,1) = left(capital,1) and name!= capital
    
