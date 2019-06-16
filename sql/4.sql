/* SUM and COUNT */

# 1
SELECT SUM(population)
FROM world

# 2
SELECT DISTINCT continent
FROM world

# 3
SELECT SUM(gdp)
FROM world
WHERE continent = 'Africa'

# 4
SELECT count(name)
FROM world
WHERE area >= 1000000

# 5
SELECT SUM(population)
FROM world
WHERE name IN('Estonia','Latvia','Lithuania')

# 6
SELECT continent, COUNT(name)
  FROM world
 GROUP BY continent

# 7
SELECT continent, COUNT(name)
  FROM world
 WHERE population >= 10000000
 GROUP BY continent

/* quiz */
#1 3
#2 1
#3 4
#4 2
#5 2
#6 5
#7 4
#8 D
