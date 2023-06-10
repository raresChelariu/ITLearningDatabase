CREATE PROCEDURE [dbo].[UserCourseProgressUpdate] 
 @UserID BIGINT,
 @CourseID BIGINT,
 @ItemID BIGINT
AS
BEGIN
	IF EXISTS (SELECT 1 FROM dbo.UserCourseProgress WHERE UserID = @UserID AND CourseID = @CourseID)
	BEGIN
	    UPDATE dbo.UserCourseProgress SET ItemID = @ItemID
		WHERE UserID = @UserID AND CourseID = @CourseID;
	END;
	ELSE
	BEGIN
	    INSERT INTO dbo.UserCourseProgress (UserID, CourseID, ItemID) VALUES (@UserID, @CourseID, @ItemID);
	END
END;