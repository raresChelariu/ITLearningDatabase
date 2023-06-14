CREATE TABLE [dbo].[SqlQuizzes] (
    [CourseID]      BIGINT         NOT NULL,
    [ItemID]        BIGINT         CONSTRAINT [DF_SqlQuiz_ItemID] DEFAULT (NEXT VALUE FOR [dbo].[SEQ_Items]) NOT NULL,
    [QuestionText]  NVARCHAR (512) NOT NULL,
    [ExpectedQuery] NVARCHAR (256) NOT NULL
);

