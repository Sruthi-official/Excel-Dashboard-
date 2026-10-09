SELECT id,movie,description,rating 
FROM Cinema 
WHERE id % 2=1 AND DESCRIPTION !='boring'
ORDER BY rating DESC;