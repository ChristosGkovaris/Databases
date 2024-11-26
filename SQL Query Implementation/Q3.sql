
        -- Count the total number of students who are in their 3rd or 4th year of the program
        SELECT COUNT(*) AS TotalStudents
        FROM student
        WHERE yearsinProgram IN (3, 4);
    