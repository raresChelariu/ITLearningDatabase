CREATE PROCEDURE [dbo].[SqlQuizGetByItemId] @ItemId BIGINT
AS BEGIN
    SELECT CourseID, ItemID, QuestionText, ExpectedQuery FROM dbo.SqlQuizzes WHERE ItemID = @ItemId;

END;