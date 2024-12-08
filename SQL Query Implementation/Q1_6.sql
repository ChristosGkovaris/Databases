SELECT s.yearsInProgram,
       (COUNT(DISTINCT t.u_id) * 100.0 / COUNT(DISTINCT s.s_id)) AS teachingPercentage
FROM student s
LEFT JOIN taughtby t ON s.s_id = t.u_id
GROUP BY s.yearsInProgram;