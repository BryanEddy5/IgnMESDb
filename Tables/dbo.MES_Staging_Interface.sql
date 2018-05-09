CREATE TABLE [dbo].[MES_Staging_Interface]
(
[Oracle2MESInterfaceGUID] [uniqueidentifier] NULL CONSTRAINT [DF_MES_Staging_Interface_Oracle2MESInterfaceGUID] DEFAULT (newid()),
[Interface_Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Interface_Status] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[batch_Id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Creation_Date] [datetime] NULL
) ON [PRIMARY]
GO
