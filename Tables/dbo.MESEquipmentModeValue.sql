CREATE TABLE [dbo].[MESEquipmentModeValue]
(
[EquipmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Primary] ON [dbo].[MESEquipmentModeValue] ([EquipmentUUID], [TimeStamp]) ON [PRIMARY]
GO
