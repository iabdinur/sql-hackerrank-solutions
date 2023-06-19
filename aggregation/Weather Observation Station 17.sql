/* Query the Western Longitude (LONG_W) where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

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

select round(long_w,4)
from  station
where lat_n = (select min(lat_n)from station where lat_n > 38.7780)
