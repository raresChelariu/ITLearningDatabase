CREATE PROCEDURE [dbo].[VideosInsert]
    @Name VARCHAR(MAX)
  , @Content VARBINARY(MAX)
  , @RowId BIGINT OUTPUT 
AS
BEGIN
	SET @RowId = -1;
    INSERT INTO dbo.Videos
    (
        [Filename]
      , [FileContent]
    )
    VALUES
    (   @Name    -- FileContent - varbinary(max)
      , @Content -- Filename - varchar(max)
        );

	SELECT @RowId = SCOPE_IDENTITY();
END;