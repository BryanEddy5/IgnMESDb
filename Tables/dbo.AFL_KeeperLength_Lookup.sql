CREATE TABLE [dbo].[AFL_KeeperLength_Lookup]
(
[FiberLookUpGUID] [uniqueidentifier] NULL,
[Item] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrgCode] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FiberFamily] [varchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeeperLength] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrgID] [int] NULL,
[CreatedBy] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Collection] [int] NULL,
[EntryDate] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NULL,
[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
