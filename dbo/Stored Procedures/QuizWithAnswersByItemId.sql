﻿CREATE PROCEDURE [dbo].[QuizWithAnswersByItemId] @ItemId BIGINT
AS BEGIN
    SELECT CourseID, ItemID, QuestionText FROM dbo.Quizzes WHERE ItemID = @ItemId;

	SELECT QuizChoiceID, QuizID, ChoiceText, CorrectChoice FROM dbo.QuizChoices WHERE QuizID = @ItemId;
END;