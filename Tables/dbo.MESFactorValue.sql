CREATE TABLE [dbo].[MESFactorValue]
(
[ID] [int] NOT NULL,
[FactorValue] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FactorID_TimeStamp] ON [dbo].[MESFactorValue] ([ID], [TimeStamp] DESC) ON [PRIMARY]
GO
