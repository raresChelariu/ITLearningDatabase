CREATE TABLE [dbo].[CourseScripts] (
    [ScriptID]         BIGINT          NOT NULL,
    [ScriptName]       VARCHAR (128)   NOT NULL,
    [CourseID]         BIGINT          NOT NULL,
    [DatabaseSystemID] SMALLINT        NOT NULL,
    [SeedingScript]    NVARCHAR (2048) NOT NULL,
    CONSTRAINT [PK_CourseScripts] PRIMARY KEY CLUSTERED ([ScriptID] ASC)
);

