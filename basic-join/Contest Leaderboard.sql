/* You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this 
one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of 0 from your result.

Input Format

The following tables contain contest data:

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.
+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| hacker_id   | Integer      |
| name        | Integer      |
+-------------+--------------+

Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, 
challenge_id is the id of the challenge for which the submission belongs to, and score is the score of the submission.
+-----------------+--------------+
| Column          | Type         |
+-----------------+--------------+
| submission_id   | Integer      |
| hacker_id       | Integer      |
| challenge_id    | Integer      |
| score           | Integer      |
+-----------------+--------------+ 

*/

SELECT 
	h.hacker_id, 
    h.name, 
    SUM(MAX_SCORE.t1) AS total_score
FROM Hackers h inner join 
(
    SELECT MAX(s.score) AS t1, s.hacker_id  
    FROM Submissions s
    GROUP BY s.challenge_id, s.hacker_id
    HAVING t1 > 0
) AS MAX_SCORE
ON h.hacker_id = MAX_SCORE.hacker_id
GROUP BY h.hacker_id, h.name
ORDER BY total_score DESC, hacker_id ASC
