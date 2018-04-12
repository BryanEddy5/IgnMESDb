CREATE TABLE [dbo].[REC_ProdItemValueGroup]
(
[ProdItemValueGroupUUID] [uniqueidentifier] NOT NULL CONSTRAINT [DF__REC_ProdI__ProdI__1C873BEC] DEFAULT (newid()),
[ProdItemValueGroupName] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GroupViewOrder] [int] NOT NULL,
[Active] [bit] NULL CONSTRAINT [DF__REC_ProdI__Activ__1D7B6025] DEFAULT ((1)),
[DateCreated] [datetime] NULL CONSTRAINT [DF__REC_ProdI__DateC__1E6F845E] DEFAULT (getdate()),
[DateRevised] [datetime] NULL CONSTRAINT [DF__REC_ProdI__DateR__1F63A897] DEFAULT (getdate())
) ON [PRIMARY]
GO
