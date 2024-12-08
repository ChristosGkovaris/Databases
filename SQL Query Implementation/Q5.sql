SELECT s.s_id
FROM student s
LEFT JOIN advisedby a ON s.s_id = a.s_id
WHERE s.yearsinProgram = 3 AND a.p_id IS NULL;