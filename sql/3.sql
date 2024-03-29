/* SELECT within SELECT */

# 1
SELECT name FROM world
 WHERE population > (SELECT population FROM world
                      WHERE name='Russia')

# 2
SELECT name FROM world
 WHERE gdp/population > (SELECT gdp/population FROM world
                          WHERE name='United Kingdom')
   AND continent = 'Europe'

# 3
SELECT name, continent FROM world
 WHERE continent = (SELECT continent FROM world
                     WHERE name='Argentina')
    OR continent = (SELECT continent FROM world
                     WHERE name='Australia')
 ORDER BY name

# 4
SELECT name, population FROM world
 WHERE population > (SELECT population FROM world
                      WHERE name='Canada')
   AND population < (SELECT population FROM world
                      WHERE name='Poland')

# 5
SELECT name, CONCAT(
              ROUND(population*100/(SELECT population FROM world
                                     WHERE name = 'Germany'), 0),
                '%')
          AS rate
  FROM world
 WHERE continent = 'Europe'

# 6
SELECT name FROM world
 WHERE gdp > (SELECT max(gdp) FROM world
               WHERE continent = 'Europe')

# 7
SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent)

# 8
SELECT continent, name FROM world x
 WHERE name = (SELECT name FROM world y
                WHERE x.continent = y.continent
                ORDER BY name
                LIMIT 1)

# 9
SELECT name, continent, population FROM world
 WHERE continent NOT IN
       (SELECT DISTINCT continent FROM world WHERE population > 25000000)

# 10
SELECT name, continent FROM world x
 WHERE population > ALL (SELECT population * 3 FROM world y
                          WHERE x.continent = y.continent
                            AND x.name != y.name)

/* Quiz */
# 1 3
# 2 2
# 3 1
# 4 4
# 5 2
# 6 2
# 7 2
