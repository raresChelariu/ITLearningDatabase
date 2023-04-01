CREATE PROCEDURE [dbo].[UsersInsert]
    @Username VARCHAR(256)
  , @PasswordHash VARBINARY(MAX)
  , @PasswordSalt VARBINARY(MAX)
  , @Role SMALLINT
  , @Email VARCHAR(256)
  , @Id BIGINT OUTPUT
AS
BEGIN
    SET @Id = -1;
    INSERT INTO dbo.Users
    (
        [Username]
      , [PasswordHash]
      , [PasswordSalt]
      , [Email]
      , [Role]
    )
    VALUES
    (@Username, @PasswordHash, @PasswordSalt, @Email, @Role);

    SELECT @Id = Id FROM dbo.Users WHERE Email = @Email;
END;