-- 1. The example uses a WHERE clause to show the population of 'France'. 
-- Note that strings should be in 'single quotes';
-- Modify it to show the population of Germany'

    SELECT population FROM world
      WHERE name = 'Germany'

--2. Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
    select name, population from world
    where name in ('Sweden', 'Norway', 'Denmark');

--3 Which countries are not too small and not too big?
--  show the country and the area for countries with an area between 200,000 and 250,000.
    select name, area from world
    where area between '200000' and '250000';
