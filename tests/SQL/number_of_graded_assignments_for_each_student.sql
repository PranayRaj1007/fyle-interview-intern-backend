-- Write query to get number of graded assignments for each student:
SELECT assignments.state AS "assignment state", 
COUNT(*) AS "number of assignments" 
from assignments 
GROUP BY assignments.state;
