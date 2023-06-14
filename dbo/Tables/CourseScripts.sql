CREATE TABLE [dbo].[CourseScripts] (
    [CourseID]   BIGINT         NOT NULL,
    [ScriptID]   BIGINT         CONSTRAINT [DF_CourseScripts_ScriptID] DEFAULT (NEXT VALUE FOR [dbo].[SEQ_Scripts]) NOT NULL,
    [ScriptText] NVARCHAR (MAX) NOT NULL
);



