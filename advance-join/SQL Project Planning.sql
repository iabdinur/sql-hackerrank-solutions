/* You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. It is guaranteed that 
the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

+---------------+--------------+
| Column        | Type         |
+---------------+--------------+
| Task_ID       | Integer      |
| Start_Date    | Date         |
| End_Date      | Date         |
+---------------+--------------+

If the End_Date of the tasks are consecutive, then they are part of the same project. Samantha is interested in 
finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days it took to complete the 
project in ascending order. If there is more than one project that have the same number of completion days, then 
order by the start date of the project.

*/

SELECT s.Proj_Start_Date, min(e.Proj_End_Date) as Real_Proj_End_Date 
FROM
(SELECT Start_Date as Proj_Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) s,
(SELECT End_Date as Proj_End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) e
WHERE s.Proj_Start_Date < e.Proj_End_Date
GROUP BY s.Proj_Start_Date
ORDER BY DATEDIFF(min(e.Proj_End_Date), s.Proj_Start_Date) ASC, s.Proj_Start_Date ASC;