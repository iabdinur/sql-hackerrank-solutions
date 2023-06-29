/* ou are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. 
Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID 
and Salary (offered salary in $ thousands per month).

Students
+------------+--------------+
| Column     | Type         |
+------------+--------------+
| ID         | Integer      |
| Name       | String       |
+------------+--------------+

Friends
+------------+--------------+
| Column     | Type         |
+------------+--------------+
| ID         | Integer      |
| Name       | String       |
+------------+--------------+

Packages
+------------+--------------+
| Column     | Type         |
+------------+--------------+
| ID         | Integer      |
| Name       | String       |
+------------+--------------+

Write a query to output the names of those students whose best friends got offered a higher salary than them. 
Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students 
got same salary offer.

*/

Select S.Name
from Students S inner join Friends f
on S.ID = f.ID
inner join Packages p
on f.ID = p.ID
inner join Packages fp
on f.Friend_ID = fp.ID
where fp.Salary > p.Salary
order by fp.Salary;