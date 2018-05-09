CREATE TABLE [dbo].[AFL_NCMIR_Table]
(
[NCMIRGUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AFL_NCMIR_Table_NCMIRGUID] DEFAULT (newid()),
[LocationID] [int] NULL,
[NcmirNumber] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NcmirKey] [int] NULL,
[JobNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Customer] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrderNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FiberCount] [int] NULL,
[ItemNumber] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemDescription] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Closed] [bit] NULL,
[DateCreated] [datetime] NULL CONSTRAINT [DF_AFL_NCMIR_Table_DateCreated] DEFAULT ((1)),
[DateClosed] [datetime] NULL,
[ModifiedDate] [datetime] NULL,
[IsEnabled] [bit] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AFL_NCMIR_Table] ADD CONSTRAINT [PK_AFL_NCMIR_Table] PRIMARY KEY CLUSTERED  ([NCMIRGUID]) ON [PRIMARY]
GO
