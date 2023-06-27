
CREATE PROCEDURE PlaygroundUsersInsert
	@CourseID BIGINT,
	@UserID BIGINT,
	@DatabaseName varchar(64)
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM dbo.PlaygroundUsers WHERE CourseID = @CourseID and UserID = @UserID)
	BEGIN
		INSERT INTO dbo.PlaygroundUsers	(CourseID, UserID, DatabaseName) VALUES (@CourseID, @UserID, @DatabaseName);
	END;
END