/* Query all columns for a city in CITY with the ID 1661.

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

select *
from city 
where id = 1661