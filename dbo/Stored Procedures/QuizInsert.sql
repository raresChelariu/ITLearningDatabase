CREATE PROCEDURE [dbo].[QuizInsert] @CourseID BIGINT, @QuestionText NVARCHAR(512), @QuizTitle VARCHAR(32), @PossibleAnswers QuizChoicesList READONLY
AS BEGIN
    DECLARE @ItemID BIGINT;
    SET @ItemID=NEXT VALUE FOR dbo.SEQ_Items;
    EXEC dbo.CourseAppendItem @CourseID=@CourseID, @ItemID=@ItemID;
    INSERT INTO dbo.ItemTitles(ItemID, ItemTitle, ItemTypeID)
    VALUES(@ItemID, @QuizTitle, 2);
    INSERT INTO dbo.Quizzes(ItemID, CourseID, QuestionText)
    VALUES(@ItemID, @CourseID, @QuestionText);
    INSERT INTO dbo.QuizChoices(QuizID, ChoiceText, CorrectChoice)
    SELECT @ItemID, PA.ChoiceText, PA.IsCorrect FROM @PossibleAnswers PA;
END;