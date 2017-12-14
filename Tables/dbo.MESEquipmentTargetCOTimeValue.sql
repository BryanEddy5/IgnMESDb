CREATE TABLE [dbo].[MESEquipmentTargetCOTimeValue]
(
[EquipmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [float] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Primary] ON [dbo].[MESEquipmentTargetCOTimeValue] ([EquipmentUUID], [TimeStamp]) ON [PRIMARY]
GO
