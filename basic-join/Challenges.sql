/* Julia asked her students to create some coding challenges. 
Write a query to print the hacker_id, name, and the total number of challenges created by each student. 
Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, 
then sort the result by hacker_id. If more than one student created the same number of challenges and 
the count is less than the maximum number of challenges created, then exclude those students from the result.

Input Format

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.
+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| hacker_id   | Integer      |
| name        | String       |
+-------------+--------------+


Challenges: The challenge_id is the id of the challenge, and hacker_id is the id of the student who created the challenge. 
+------------------+--------------+
| Column           | Type         |
+------------------+--------------+
| challenge_id     | Integer      |
| hacker_id        | Integer      |
+------------------+--------------+

*/

select h.hacker_id, h.name, count(c.challenge_id) as total_count
from hackers h join challenges c 
on h.hacker_id = c.hacker_id
group by h.hacker_id, h.name
having total_count = (
select count(temp1.challenge_id) as max_count
    from challenges temp1
    group by temp1.hacker_id
    order by max_count desc
    limit 1
)
or total_count in
(
    select distinct other_counts from (
select h2.hacker_id, h2.name, count(c2.challenge_id) as other_counts
from Hackers h2 join challenges c2
on h2.hacker_id = c2.hacker_id
group by h2.hacker_id, h2.name
) temp2
    group by other_counts
having count(other_counts) =1)
order by total_count desc, h.hacker_id