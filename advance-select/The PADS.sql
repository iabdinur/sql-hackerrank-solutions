/*  Generate the following two result sets:

1) Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each 
profession as a parenthetical (i.e.: enclosed in parentheses). For example: AnActorName(A), 
ADoctorName(D), AProfessorName(P), and ASingerName(S).

2) Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and 
output them in the following format:

where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name.
If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

Note: There will be at least two entries in the table for each type of occupation.

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

SELECT CONCAT(Name, '(', LEFT(Occupation, 1) , ')')
FROM Occupations 
ORDER BY Name;

SELECT CONCAT('There are a total of ', COUNT(*), ' ', LOWER(Occupation), 's.')
FROM Occupations 
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC, Occupation;
