CREATE PROCEDURE QuizWithAnswersByItemId @ItemId BIGINT
AS BEGIN
    SELECT CourseID, ItemID, QuestionText FROM dbo.Quizzes;

	SELECT QuizChoiceID, QuizID, ChoiceText, CorrectChoice FROM dbo.QuizChoices WHERE QuizID = @ItemId;
END;