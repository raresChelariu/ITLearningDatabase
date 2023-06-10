CREATE PROCEDURE [dbo].[CourseWikiInsert] @CourseID BIGINT, @WikiTitle VARCHAR(32), @WikiText NVARCHAR(2048)
AS BEGIN
    DECLARE @ItemID BIGINT;
    SET @ItemID=NEXT VALUE FOR dbo.SEQ_Items;
    EXEC dbo.CourseAppendItem @CourseID=@CourseID, @ItemID=@ItemID;
    INSERT INTO dbo.ItemTitles(ItemID, ItemTitle, ItemTypeID)
    VALUES(@ItemID, @WikiTitle, 2);
    INSERT INTO dbo.CourseWikis(ItemID, CourseWikiText)
    VALUES(@ItemID, -- ItemID - bigint
    @WikiText -- CourseWikiText - nvarchar(2048)
        );
    SELECT @ItemID;
END;