CREATE PROCEDURE [dbo].[SqlQuizInsert] @CourseID BIGINT,
@QuestionText NVARCHAR(512),
@QuizTitle VARCHAR(32), @ExpectedQuery NVARCHAR(256)
AS BEGIN
    DECLARE @ItemID BIGINT;
    SET @ItemID=NEXT VALUE FOR dbo.SEQ_Items;
    EXEC dbo.CourseAppendItem @CourseID=@CourseID, @ItemID=@ItemID;
    INSERT INTO dbo.ItemTitles(ItemID, ItemTitle, ItemTypeID)
    VALUES(@ItemID, @QuizTitle, 4);

    INSERT INTO dbo.SqlQuizzes (ItemID, CourseID, QuestionText, ExpectedQuery)
    VALUES(@ItemID, @CourseID, @QuestionText, @ExpectedQuery);
	SELECT @ItemID;
END;