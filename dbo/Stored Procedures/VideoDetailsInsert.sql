
CREATE PROCEDURE VideoDetailsInsert 
	@CourseID BIGINT, 
	@ItemTitle VARCHAR(32),
	@ContentType VARCHAR(32),
	@Filename VARCHAR(256), 
	@ItemID BIGINT OUTPUT 
AS
BEGIN
	SET @ItemID=NEXT VALUE FOR dbo.SEQ_Items;
    EXEC dbo.CourseAppendItem @CourseID=@CourseID, @ItemID=@ItemID;
    INSERT INTO dbo.ItemTitles(ItemID, ItemTitle, ItemTypeID)
    VALUES(@ItemID, @ItemTitle, 3);

    INSERT INTO dbo.VideoDetails ([ItemID], [ContentType], [FileName]) VALUES (@ItemID, @ContentType, @Filename);
END