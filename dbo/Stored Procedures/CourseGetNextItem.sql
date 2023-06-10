CREATE PROCEDURE [CourseGetNextItem] @CourseID BIGINT, @ItemID BIGINT, @EndOfCourse BIT OUTPUT, @NextID BIGINT OUTPUT
AS BEGIN
    DECLARE @ItemsOrder VARCHAR(512);
    SELECT @ItemsOrder=C.ItemsOrder FROM dbo.Courses C WHERE C.ID=@CourseID;

	CREATE TABLE #ItemIdsWithOrder (
		ItemID BIGINT NOT NULL,
		OrderID INT NOT NULL
	);
	INSERT INTO #ItemIdsWithOrder(ItemID, OrderID)
    SELECT ItemIds.ItemID, ItemIds.OrderID FROM (SELECT CAST([value] AS BIGINT) ItemID, ROW_NUMBER() OVER (ORDER BY(SELECT NULL)) OrderID
     FROM STRING_SPLIT(@ItemsOrder, ',')
     WHERE LEN(value)>0) ItemIds;

	 DECLARE @ItemIdOrder INT;
	 SELECT @ItemIdOrder = OrderID FROM #ItemIdsWithOrder WHERE ItemID = @ItemID;

	 IF @ItemIdOrder = (SELECT MAX(OrderID) FROM #ItemIdsWithOrder)
	 BEGIN
	     SET @EndOfCourse = 1;
		 SET @NextID = 0;
	 END
	 ELSE 
	 BEGIN
		SET @EndOfCourse = 0;
		SELECT @NextID = ItemID FROM #ItemIdsWithOrder WHERE OrderID = @ItemIdOrder + 1;
	 END
END;