CREATE TABLE [dbo].[Quizzes] (
    [CourseID]     BIGINT         NOT NULL,
    [ItemID]       BIGINT         CONSTRAINT [DF_Quiz_ItemID] DEFAULT (NEXT VALUE FOR [dbo].[SEQ_Items]) NOT NULL,
    [QuestionText] NVARCHAR (512) NOT NULL
);

