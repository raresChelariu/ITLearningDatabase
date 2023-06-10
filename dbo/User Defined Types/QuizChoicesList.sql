CREATE TYPE [dbo].[QuizChoicesList] AS TABLE (
    [ChoiceText] NVARCHAR (512) NULL,
    [IsCorrect]  BIT            NOT NULL);

