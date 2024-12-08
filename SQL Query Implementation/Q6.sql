SELECT MIN(s.yearsinProgram) AS MinYearsWithAdvisor
FROM student s
INNER JOIN advisedby a ON s.s_id = a.s_id;