--List each country name where the population is larger than that of 'Russia'.
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')


--Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
      SELECT name FROM world
  WHERE continent = 'Europe' AND gdp/population > (SELECT gdp/population FROM world WHERE  name = 'United Kingdom' )


--List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.
SELECT name ,continent from world WHERE continent IN ( SELECT continent from world WHERE name IN ('Argentina','Australia')) order by name



--Which country has a population that is more than Canada but less than Poland? Show the name and the population.
SELECT name,population from world WHERE population >(SELECT population from world WHERE name= 'Canada') AND population <(SELECT population from world WHERE name ='Poland')
      

--Germany (population 80 million) has the largest population of the countries in Europe.
-- Austria (population 8.5 million) has 11% of the population of Germany.
--Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
SELECT name,CONCAT(ROUND(100*population/(SELECT population from world WHERE name='Germany')),'%') from world WHERE continent = 'Europe'


--Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)
SELECT name from world WHERE gdp >  (SELECT max(gdp) from world WHERE continent = 'Europe')


--Find the largest country (by area) in each continent, show the continent, the name and the area:
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND population>0)


--List each continent and the name of the country that comes first alphabetically.
SELECT continent,name from world x WHERE name <= ALL (SELECT name from world y WHERE y.continent = x.continent order by name )