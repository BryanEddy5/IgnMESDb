CREATE TABLE [dbo].[MESWorkOrder]
(
[MESWorkOrderUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Enabled] [int] NOT NULL,
[Creator] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialRefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaterialRefType] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WorkOrderQuantity] [float] NOT NULL,
[WorkOrderDueDate] [datetime] NOT NULL,
[WorkOrderClosed] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MESWorkOrderUUID] ON [dbo].[MESWorkOrder] ([MESWorkOrderUUID]) ON [PRIMARY]
GO
