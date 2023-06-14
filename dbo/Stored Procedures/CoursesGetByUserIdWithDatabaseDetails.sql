CREATE PROCEDURE CoursesGetByUserIdWithDatabaseDetails @UserID BIGINT
AS BEGIN
    SELECT DISTINCT C.ID, C.Name, (CASE WHEN PU.DatabaseName IS NULL THEN 0 ELSE 0 END) AS IsDatabaseCreated
    FROM dbo.Courses C
         JOIN dbo.CourseScripts CS ON CS.CourseID=C.ID
         LEFT JOIN dbo.PlaygroundUsers PU ON C.ID=PU.CourseID;
END;