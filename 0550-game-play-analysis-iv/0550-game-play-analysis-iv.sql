-- Write your PostgreSQL query statement 
WITH first_login AS (
    SELECT player_id,MIN(event_date) AS first_date 
    FROM Activity
    GROUP BY player_id
)
SELECT ROUND(COUNT(DISTINCT a.player_id)::NUMERIC/
COUNT(f.player_id),2) AS fraction 
FROM Activity a RIGHT JOIN first_login f 
ON a.player_id=f.player_id 
AND a.event_date=f.first_date+1 ;