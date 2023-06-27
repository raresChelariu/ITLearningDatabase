CREATE PROCEDURE CoursesGetByStudentId @UserId BIGINT
AS BEGIN
    SELECT C.ID, C.Name, C.AuthorID, C.CreatedDateTime, C.ItemsOrder, C.Description
    FROM dbo.Courses C
         JOIN dbo.UserCourseProgress UCP ON UCP.CourseID=C.ID
    WHERE UCP.UserID=@UserId;
END;