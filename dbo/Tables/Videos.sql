CREATE TABLE [dbo].[Videos] (
    [RowID]       BIGINT          CONSTRAINT [DF_Videos] DEFAULT (NEXT VALUE FOR [SEQ_Videos]) NOT NULL,
    [FileContent] VARBINARY (MAX) NOT NULL,
    [Filename]    VARCHAR (MAX)   NOT NULL,
    CONSTRAINT [PK_Videos_RowID] PRIMARY KEY CLUSTERED ([RowID] ASC)
);

