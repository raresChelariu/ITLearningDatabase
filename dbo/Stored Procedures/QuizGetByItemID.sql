CREATE PROCEDURE dbo.QuizGetByItemID @ItemID BIGINT
AS BEGIN
    SELECT Q.CourseID, Q.ItemID, Q.QuestionText, IT.ItemTitle
    FROM dbo.Quizzes Q
         JOIN dbo.ItemTitles IT ON Q.ItemID=IT.ItemID
    WHERE IT.ItemID=@ItemID;
END;