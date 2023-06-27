/*  Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath 
its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Input Format

The OCCUPATIONS table is described as follows:
+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| Name        | String       |
| Occupation  | String       |
+-------------+--------------+


Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.

*/

SELECT 
    Min(IF(Occupation="Doctor", Name, NULL)) AS Doctor,
    Min(IF(Occupation="Professor", Name, NULL)) AS Professor,
    Min(IF(Occupation="Singer", Name, NULL)) AS Singer,
    Min(IF(Occupation="Actor", Name, NULL)) AS Actor
FROM         
    (Select Name, Occupation, Row_number() OVER (PARTITION BY Occupation ORDER BY name) AS row_num From OCCUPATIONS) 

AS ord GROUP BY row_num