CREATE TABLE [dbo].[MESCountValue]
(
[CounterID] [int] NOT NULL,
[CounterValue] [bigint] NOT NULL,
[RawCount] [bigint] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CounterID_TimeStamp] ON [dbo].[MESCountValue] ([CounterID], [TimeStamp] DESC) ON [PRIMARY]
GO
