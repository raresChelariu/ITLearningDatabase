CREATE PROCEDURE [dbo].[CourseGetTitlesByCourseID] @CourseID BIGINT
AS BEGIN
    DECLARE @ItemsOrder VARCHAR(512);
    SELECT @ItemsOrder=C.ItemsOrder FROM dbo.Courses C WHERE C.ID=@CourseID;
    SELECT IT.ItemID, IT.ItemTitle, IT.ItemTypeID
    FROM dbo.ItemTitles IT
         JOIN(SELECT CAST([value] AS BIGINT) ItemID, ROW_NUMBER() OVER (ORDER BY(SELECT NULL)) OrderID
              FROM STRING_SPLIT(@ItemsOrder, ',')
              WHERE LEN(value)>0) ItemIDs ON ItemIDs.ItemID=IT.ItemID
    ORDER BY ItemIDs.OrderID;
END;