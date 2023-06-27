CREATE PROCEDURE [dbo].[CourseScriptInsert] @CourseID BIGINT, @ScriptText NVARCHAR(MAX)
AS BEGIN
    DECLARE @ScriptID BIGINT;
    SET @ScriptID=NEXT VALUE FOR dbo.SEQ_Scripts;
    INSERT INTO dbo.CourseScripts(CourseID, ScriptID, ScriptText)
    VALUES(@CourseID, -- CourseID - bigint
    @ScriptID, -- ScriptID - bigint
    @ScriptText 
        );
	SELECT @ScriptID;
END;