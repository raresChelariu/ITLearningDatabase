﻿
CREATE PROCEDURE [dbo].[CoursesInsert]
    @AuthorID BIGINT
  , @Name VARCHAR(128)
  , @Id BIGINT OUTPUT
AS
BEGIN
    SET @Id = -1;
    INSERT INTO [dbo].[Courses] ([Name], [AuthorID]) VALUES (@Name, @AuthorID);

    SELECT @Id = Id FROM dbo.Courses WHERE AuthorId = @AuthorID and Name = @Name;
END;