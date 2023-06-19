/* Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:


+-------------+--------------+
| Field       | Type         |
+-------------+--------------+
| ID          | NUMBER       |
| NAME        | VARCHAR2(21) |
| STATE       | VARCHAR2(2)  |
| LAT_N       | NUMBER       |
| LONG_W      | NUMBER       |
+-------------+--------------+

Where LAT_N is the northern latitude and LONG_W is the western longitude.
*/

select distinct city 
from station 
where right(city, 1) not in ('a', 'e', 'i', 'o', 'u')