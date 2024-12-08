SELECT t.course_id,
       SUM(CASE WHEN p.p_id IS NOT NULL THEN 1 ELSE 0 END) AS numProfessors,
       SUM(CASE WHEN s.s_id IS NOT NULL THEN 1 ELSE 0 END) AS numStudents
FROM taughtby t
LEFT JOIN professor p ON t.u_id = p.p_id
LEFT JOIN student s ON t.u_id = s.s_id
GROUP BY t.course_id;