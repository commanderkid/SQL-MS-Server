--Hscker rank
--starts with volves
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '[A, E, I, O, U]%'
ORDER BY CITY;

--Ends with volves
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%[A, E, I, O, U]';

--Ends and begins with volves
SELECT CITY FROM STATION 
WHERE CITY LIKE '[A, I, E, O, U]%[A, I, E, O, U]';

--City that does not start with volves SELECT 
DISTINCT CITY FROM STATION
WHERE CITY NOT LIKE '[A, E, I, O, U]%'

SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '[^AEIOU]%';

--City that does not start with volves
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%[^AIEOU]';

--City using UNITED
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '[^AEIOU]%'
UNION
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%[^AEIOU]';

--Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.
SELECT DISTINCT CITY FROM STATION
WHERE CITY LIKE '%[^AEIUO]' AND CITY LIKE '[^AEIOU]%';

--Query the Name of any student in STUDENTS who scored higher than  Marks. 
--Order your output by the last three characters of each name. 
---If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), 
--secondary sort them by ascending ID.
SELECT NAME FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID ASC;


--Write a query that prints a list of employee names (i.e.: the name attribute) 
--for employees in Employee having a salary greater than  per month who have been employees for less than  months. 
--Sort your result by ascending employee_id.
SELECT NAME FROM Employee
WHERE months < 10 AND salary > 2000
ORDER BY employee_id ASC;

--Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION) FROM CITY
WHERE DISTRICT = 'California';

--Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION) FROM CITY

--Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT FLOOR(AVG(POPULATION)) FROM CITY;
WHERE DISTRICT = 'California';

--Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION) FROM CITY
WHERE COUNTRYCODE = 'JPN';
