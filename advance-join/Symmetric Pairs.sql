/* You are given a table, Functions, containing two columns: X and Y.

+------------+--------------+
| Column     | Type         |
+------------+--------------+
| X          | Integer      |
| Y          | Integer      |
+------------+--------------+

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that 
X1 ≤ Y1.

*/
set @row1:=0; set @row2:=0; 
select p_start.start_date, p_end.end_date 
from (select @row1:=@row1+1 as rown, start_date from projects where start_date not in (select end_date from projects)) as p_start 
inner join (select @row2:=@row2+1 as rown, end_date from projects where end_date not in (select start_date from projects)) as p_end on p_start.rown=p_end.rown 
order by p_end.end_date-p_start.start_date,p_start.start_date;