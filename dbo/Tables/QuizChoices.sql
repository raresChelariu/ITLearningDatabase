CREATE TABLE [dbo].[QuizChoices] (
    [QuizChoiceID]  BIGINT         CONSTRAINT [DF_QuizChoiceID] DEFAULT (NEXT VALUE FOR [SEQ_QuizChoice]) NOT NULL,
    [QuizID]        BIGINT         NOT NULL,
    [ChoiceText]    NVARCHAR (512) NOT NULL,
    [CorrectChoice] BIT            NOT NULL
);

