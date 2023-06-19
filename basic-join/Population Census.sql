/*Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.

Input Format

The CITY table and COUNTRY is described as follows:

+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULATION  | NUMBER       |
+-------------+--------------+
+-----------------+--------------+
| Field           | Type         |
+-----------------+--------------+
| CODE            | VARCHAR2(3)  |
| NAME            | VARCHAR2(44) |
| CONTINENT       | VARCHAR2(13) |
| REGION          | VARCHAR2(25) |
| SURFACEAREA     | NUMBER       |
| INDEPYEAR       | VARCHAR2(5)  |
| POPULATION      | NUMBER       |
| LIFEEXPECTANCY  | VARCHAR2(4)  |
| GNP             | NUMBER       |
| GNPOLD          | VARCHAR2(9)  |
| LOCALNAME       | VARCHAR2(44) |
| GOVERMENTFORM   | VARCHAR2(44) |
| HESFOFSTATE     | VARCHAR2(32) |
| CAPITAL         | VARCHAR2(4)  |
| CODE2           | VARCHAR2(2)  |
+-----------------+--------------+

 */

select sum(c.population)
from  city c right join country co
on  co.code = c.countrycode 
where co.continent = 'Asia'
