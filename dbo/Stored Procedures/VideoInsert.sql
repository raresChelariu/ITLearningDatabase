CREATE PROCEDURE [dbo].[VideoInsert] @CourseID BIGINT, @ItemTitle VARCHAR(32), @ContentType VARCHAR(32), @Content VARBINARY(MAX), @ItemID BIGINT OUTPUT 
AS BEGIN
    SET @ItemID=NEXT VALUE FOR dbo.SEQ_Items;
    EXEC dbo.CourseAppendItem @CourseID=@CourseID, @ItemID=@ItemID;
    INSERT INTO dbo.ItemTitles(ItemID, ItemTitle, ItemTypeID)
    VALUES(@ItemID, @ItemTitle, 3);
    INSERT INTO dbo.Videos(ItemID, ContentType, FileContent) VALUES (@ItemID, @ContentType, @Content);
END;