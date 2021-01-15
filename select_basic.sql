--What's the capital of France?
SELECT capital
  FROM world
 WHERE name = 'France'

 --Find the country that start with Y
 SELECT name FROM world
  WHERE name LIKE 'Y%'

 --Find the countries that end with y
  SELECT name FROM world
  WHERE name LIKE '%y'

--Find the countries that contain the letter x
  SELECT name FROM world
  WHERE name LIKE '%x%'

--Find the countries that end with land
  SELECT name FROM world
  WHERE name LIKE '%land'

--Find the countries that start with C and end with ia
SELECT name FROM world
  WHERE name LIKE 'c%ia%'

--Find the country that has oo in the name
SELECT name FROM world
  WHERE name LIKE '%oo%'

--Find the countries that have three or more a in the name
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

-- Modify it to show the population of  Germany 
SELECT population FROM world 
 WHERE name = 'germany'

-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'. 
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

--Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;
  