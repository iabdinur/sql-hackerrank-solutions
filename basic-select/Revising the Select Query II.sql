/* Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

Input Format

The CITY table is described as follows: 

+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(17) |
| COUNTRYCODE | VARCHAR2(3)  |
| DISTRICT    | VARCHAR2(20) |
| POPULSTION  | NUMBER       |
+-------------+--------------+

 */

select name 
from city
where countrycode = 'USA' and population > 120000 