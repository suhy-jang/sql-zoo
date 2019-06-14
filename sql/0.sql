# 1
SELECT population
  FROM world
 WHERE name = 'Germany'

# 2
SELECT name, population
  FROM world
 WHERE name IN ('Sweden', 'Norway', 'Denmark');

# 3
SELECT name, area
  FROM world
 WHERE area BETWEEN 200000 AND 250000

/* Quiz */
# 1 3
# 2 E
# 3 5
# 4 3
# 5 3
# 6 3
# 7 3
