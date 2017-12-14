CREATE TABLE [dbo].[MESEquipmentProductValue]
(
[EquipmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Primary] ON [dbo].[MESEquipmentProductValue] ([EquipmentUUID], [TimeStamp]) ON [PRIMARY]
GO
