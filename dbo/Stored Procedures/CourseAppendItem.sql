CREATE PROCEDURE CourseAppendItem @CourseID BIGINT, @ItemID BIGINT
AS BEGIN
    UPDATE dbo.Courses
    SET ItemsOrder=COALESCE(ItemsOrder, ',')+CAST(@ItemID AS VARCHAR(512))+','
    WHERE ID=@CourseID;
END;