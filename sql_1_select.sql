# SQL select query exercise
#
# World database layout:
# To use this database from a default MySQL install, type: use world;
#
# Table: City
# Columns: Id,Name,CountryCode,District,Population
#
# Table: Country
# Columns: Code, Name, Continent, Region, SurfaceArea, IndepYear, Population, LifeExpectancy, GNP, Capital
#
# Table: CountryLanguage
# Columns: CountryCode, Language, IsOfficial,Percentage
#
#
USE world;
# 1: Get a query to return "Hello World", 123
#
#select 'Hello World' AS message, 123 AS number;
#
#
# 2: Get everything from the city table
#
#SELECT * FROM city;
# 
#
#
# 3: Get everything on the cities whose district is "aceh"
# (Hint: 2 rows)
#
#SELECT * FROM city
#	WHERE District = "aceh";
#
#
# 4: Get only the name of the cities where the countrycode is "bfa"
#
#SELECT Name FROM city
#	WHERE CountryCode = "bfa";
#
#
# 5: Get both the name and district of the cities where the countrycode is "tto"
#
#SELECT Name, District FROM city
#	WHERE CountryCode = "bfa";
#
#
# 6: Get the name and district named as nm,dist from the cities where the countrycode is "arm"
#
#SELECT  name AS nm, district AS dist FROM city
#	WHERE CountryCode = "arm";
#
#
# 7: Get the cities with a name that starts with "bor"
#
#SELECT Name FROM City
#	WHERE Name LIKE "bor%"
#
#
# 8: Get the cities with a name that contains the string "orto"
#
#SELECT Name FROM City
#	WHERE Name LIKE "%orto%"
#
#
# 9: Get the cities that has a population below 1000
#
#SELECT Name,Population FROM City
#	WHERE Population < 1000;  
#
#
# 10: Get the unique countrycodes from the cities that has a population below 1000
#
#select distinct CountryCode from city
#	where Population < 1000;
#
#
# 11: Get the cities with the countrycode UKR that has more than 1000000 (one million) in population
#
#select Name, CountryCode, Population from city
#	where CountryCode = 'UKR' AND Population > 1000000;
#
#
# 12: Get the cities with a population of below 200 or above 9500000 (9.5 million)
#
#select Name, Population from city
#	where (Population < 200) OR (Population >9500000);
#
#
# 13: Get the cities with the countrycodes TJK, MRT, AND, PNG, SJM
#
#select Name, CountryCode from city
#	where CountryCode in ('TJK','MRT','AND','PNG','SJM');
#
# 14: Get the cities with a population between 200 and 700 inclusive
#
#select Name, Population from city
#	where population between 200 and 700;
#
#
# 15: Get the countries with a population between 8000 and 20000 inclusive
#
#select Name, Population from country
#	where Population between 8000 and 20000;
#
# 16: Get the name of the countries with a independence year (indepyear) before year 0
#
#select Name, IndepYear from country
#	where IndepYear < 0;
#
# 17: Get the countries that has no recorded independence year and a population above 1000000
#
#select Name, IndepYear, Population from country
#	where IndepYear is null and Population > 1000000;
#
# 18: Get countries with a SurfaceArea below 10 and a defined LifeExpectancy
#
#select Name, SurfaceArea, LifeExpectancy from country
#	where SurfaceArea < 10 and LifeExpectancy is not null;
