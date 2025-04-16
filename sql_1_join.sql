# SQL Join exercise
#
USE world;
#
# 1: Get the cities with a name starting with ping sorted by their population with the least populated cities first
#
-- SELECT 
--     Name, Population
-- FROM
--     City
-- WHERE
--     Name LIKE 'ping%'
-- ORDER BY Population;
#
# 2: Get the cities with a name starting with ran sorted by their population with the most populated cities first
#
-- SELECT 
--     Name, Population
-- FROM
--     City
-- WHERE
--     Name LIKE 'ran%'
-- ORDER BY Population DESC;
#
# 3: Count all cities
#
-- SELECT 
--     COUNT(Name) AS CityCount
-- FROM
--     city;
#
# 4: Get the average population of all cities
#
-- SELECT 
--     FLOOR(AVG(Population)) AS AveragePopulation
-- FROM
--     city;
#
# 5: Get the biggest population found in any of the cities
#
-- SELECT 
--     MAX(Population) AS MaxPopulation
-- FROM
--     city;
#
# 6: Get the smallest population found in any of the cities
#
-- SELECT 
--     MIN(Population) AS MinPopulation
-- FROM
--     city;
#
# 7: Sum the population of all cities with a population below 10000
#
-- SELECT 
--     SUM(Population) AS TotalPopulation
-- FROM
--     city
-- WHERE
--     Population < 10000;
#
# 8: Count the cities with the countrycodes MOZ and VNM
#
-- SELECT 
--     COUNT(*) AS TotalCount
-- FROM
--     city
-- WHERE
--     countrycode IN ('MOZ' , 'VNM');
#
# 9: Get individual count of cities for the countrycodes MOZ and VNM
#
-- SELECT 
--     countrycode, COUNT(countrycode)
-- FROM
--     city
-- WHERE
--     countrycode IN ('MOZ' , 'VNM')
-- GROUP BY countrycode;
#
# 10: Get average population of cities in MOZ and VNM
#
-- SELECT 
--     countrycode, CEIL(AVG(Population)) AS AveragePopulation
-- FROM
--     city
-- WHERE
--     countrycode IN ('MOZ' , 'VNM')
-- GROUP BY countrycode;
#
# 11: Get the countrycodes with more than 200 cities
#
-- SELECT 
--     CountryCode, COUNT(CountryCode) AS NumberOfCities
-- FROM
--     city
-- GROUP BY CountryCode
-- HAVING COUNT(CountryCode) >= 200;
#
# 12: Get the countrycodes with more than 200 cities ordered by city count
#
-- SELECT 
--     CountryCode, COUNT(CountryCode) AS CityCount
-- FROM
--     city
-- GROUP BY CountryCode
-- HAVING COUNT(CountryCode) >= 200
-- ORDER BY CityCount;
#
# 13: What language(s) is spoken in the city with a population between 400 and 500 ?
#
-- SELECT DISTINCT
--     Country.name AS Country,
--     City.name AS City,
--     City.Population,
--     CountryLanguage.Language
-- FROM
--     City
--         JOIN
--     Country ON City.CountryCode = Country.Code
--         JOIN
--     CountryLanguage ON Country.Code = CountryLanguage.CountryCode
-- WHERE
--     City.Population BETWEEN 400 AND 500;


#
# 14: What are the name(s) of the cities with a population between 500 and 600 people and the language(s) spoken in them
#
-- SELECT DISTINCT
--     city.Name AS city, city.Population, countrylanguage.Language
-- FROM
--     city
--         INNER JOIN
--     countrylanguage ON city.CountryCode = countrylanguage.CountryCode
-- WHERE
--     city.Population BETWEEN 500 AND 600;
#
# 15: What names of the cities are in the same country as the city with a population of 122199 (including the that city itself)
#
-- SELECT 
--     cityInSameCountry.Name
-- FROM
--     City referenceCity
--         JOIN
--     City cityInSameCountry ON referenceCity.CountryCode = cityInSameCountry.CountryCode
-- WHERE
--     referenceCity.Population = 122199;
#
# 16: What names of the cities are in the same country as the city with a population of 122199 (excluding the that city itself)
#
-- SELECT 
--     cityInSameCountry.Name
-- FROM
--     City referenceCity
--         JOIN
--     City cityInSameCountry ON referenceCity.CountryCode = cityInSameCountry.CountryCode
-- WHERE
--     referenceCity.Population = 122199
--         AND cityInSameCountry.Id != referenceCity.Id;


#
# 17: What are the city names in the country where Luanda is capital?
#
-- SELECT 
--     city.Name
-- FROM
--     country
--         JOIN
--     City AS capitalCity ON country.Capital = capitalCity.Id
--         JOIN
--     City AS city ON city.CountryCode = country.Code
-- WHERE
--     capitalCity.Name = 'Luanda';
#
# 18: What are the names of the capital cities in countries in the same region as the city named Yaren
#
-- SELECT 
--     capitalCity.Name
-- FROM
--     City yarenCity
--         JOIN
--     Country yarenCountry ON yarenCity.CountryCode = yarenCountry.Code
--         JOIN
--     Country regionalCountry ON regionalCountry.Region = yarenCountry.Region
--         JOIN
--     City capitalCity ON regionalCountry.Capital = capitalCity.Id
-- WHERE
--     yarenCity.Name = 'Yaren';
#
# 19: What unique languages are spoken in the countries in the same region as the city named Riga
#
-- SELECT DISTINCT
--     countrylanguage.Language
-- FROM
--     city AS rigaCity
--         INNER JOIN
--     Country AS rigaCountry ON rigaCity.CountryCode = rigaCountry.Code
--         INNER JOIN
--     Country AS regionalCountry ON regionalCountry.Region = rigaCountry.Region
--         INNER JOIN
--     CountryLanguage ON CountryLanguage.CountryCode = regionalCountry.Code
-- WHERE
--     rigaCity.Name = 'Riga';

#
# 20: Get the name of the most populous city
#
-- SELECT 
--     name as cityName, population
-- FROM
--     city
-- ORDER BY Population DESC
-- LIMIT 1;