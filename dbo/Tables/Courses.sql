CREATE TABLE [dbo].[Courses] (
    [ID]              BIGINT        CONSTRAINT [DF_Courses_ID] DEFAULT (NEXT VALUE FOR [SEQ_Courses]) NOT NULL,
    [Name]            VARCHAR (128) NOT NULL,
    [AuthorID]        BIGINT        NOT NULL,
    [CreatedDateTime] DATETIME2 (7) CONSTRAINT [DF_Courses_CreatedDateTime] DEFAULT (getutcdate()) NOT NULL,
    [ItemsOrder]      VARCHAR (512) NULL,
    [Description]     VARCHAR (128) NOT NULL,
    CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED ([ID] ASC)
);




GO


