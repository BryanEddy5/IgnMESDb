CREATE TABLE [dbo].[MESNumber]
(
[Key] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_O_MESNumber] ON [dbo].[MESNumber] ([Key]) ON [PRIMARY]
GO
