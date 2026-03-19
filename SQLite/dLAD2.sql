SELECT * FROM people 
WHERE state_code='NY' 
AND shirt_or_hat='hat';

SELECT first_name, state_code
FROM people
JOIN states ON people.state_code=states.state_abbrev;

SELECT first_name, quiz_points
from people
WHERE quiz_points>70
ORDER BY quiz_points;

-- This is a single-line comment
SELECT team, count(*), SUM(quiz_points), avg(quiz_points)
from people
GROUP BY team;

-- more than more select statement
SELECT first_name, last_name, quiz_points
	FROM people
	WHERE quiz_points=(SELECT MAX(quiz_points) FROM people);   -- first find max value, and then search only for that VALUES
	
-- As key word
SELECT first_name AS "First Name", UPPER(last_name) AS Surname
FROM people	
WHERE first_name="Laura";		-- get laura only first name list with column heading changed using AS

-- Creat report showing average and max score by participants in each state
SELECT state_name AS "State_Name", max(quiz_points) AS "Max_for_State", avg(quiz_points) AS "Avg_for_State"
   FROM people
   JOIN states ON people.state_code=states.state_abbrev
   GROUP BY state_code
   ORDER BY Avg_for_State DESC;
   
-- Find Alice from Florida who is a member of COBRAS
SELECT * 
	 FROM people
	 JOIN states ON people.state_code=states.state_abbrev
WHERE first_name="Alice"  AND state_name="Florida" AND team LIKE "%Cobras";
   

  
