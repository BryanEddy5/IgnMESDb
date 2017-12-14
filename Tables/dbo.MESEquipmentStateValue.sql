CREATE TABLE [dbo].[MESEquipmentStateValue]
(
[EquipmentUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[State] [int] NOT NULL,
[OriginalState] [int] NULL,
[DifferedToUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DifferedState] [int] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Primary] ON [dbo].[MESEquipmentStateValue] ([EquipmentUUID], [TimeStamp]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Differed] ON [dbo].[MESEquipmentStateValue] ([TimeStamp], [DifferedToUUID]) ON [PRIMARY]
GO
