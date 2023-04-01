CREATE TABLE [dbo].[Users] (
    [Id]           BIGINT          CONSTRAINT [DF_Users_Id] DEFAULT (NEXT VALUE FOR [dbo].[SEQ_Users]) NOT NULL,
    [Username]     VARCHAR (256)   NOT NULL,
    [PasswordHash] VARBINARY (MAX) NOT NULL,
    [PasswordSalt] VARBINARY (MAX) NOT NULL,
    [Email]        VARCHAR (256)   NOT NULL,
    [Role]         SMALLINT        NOT NULL,
    CONSTRAINT [PK_Id] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UK_Email] UNIQUE NONCLUSTERED ([Email] ASC),
    CONSTRAINT [UK_Username] UNIQUE NONCLUSTERED ([Username] ASC)
);

