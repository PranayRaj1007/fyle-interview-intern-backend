-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT COUNT(*) FROM assignments AS "number of grade A's by the teacher who has graded the most assignments"
WHERE grade LIKE "A" 
AND teacher_id = (
    SELECT teacher_id FROM assignments 
    where grade is not NULL 
    GROUP BY teacher_id 
    ORDER BY COUNT(*) 
    DESC LIMIT 1
);
