
        -- Retrieve IDs of students in their 3rd year who have an assigned professor advisor
        SELECT s.s_id
        FROM student s
        INNER JOIN advisedby a ON s.s_id = a.s_id
        WHERE s.yearsinProgram = 3;
    