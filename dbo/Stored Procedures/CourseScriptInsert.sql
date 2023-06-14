CREATE PROCEDURE [dbo].[CourseScriptInsert] @CourseID BIGINT, @ScriptText VARCHAR(32)
AS BEGIN
    DECLARE @ScriptID BIGINT;
    SET @ScriptID=NEXT VALUE FOR dbo.SEQ_Scripts;
    INSERT INTO dbo.CourseScripts(CourseID, ScriptID, ScriptText)
    VALUES(@CourseID, -- CourseID - bigint
    @ScriptID, -- ScriptID - bigint
    @ScriptText -- ScriptText - nvarchar(max)
        );
	SELECT @ScriptID;
END;