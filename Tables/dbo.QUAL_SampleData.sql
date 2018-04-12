CREATE TABLE [dbo].[QUAL_SampleData]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SampleUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MeasNo] [int] NOT NULL,
[AttrName] [varchar] (75) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttrDataType] [int] NOT NULL,
[AttrValue] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_SampleData] ADD CONSTRAINT [PK__QUAL_Sam__3214EC27029ABE99] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SPCData] ON [dbo].[QUAL_SampleData] ([AttrName], [SampleUUID], [MeasNo], [AttrDataType], [AttrValue]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SampleID] ON [dbo].[QUAL_SampleData] ([SampleUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[QUAL_SampleData] ([SampleUUID], [AttrName], [TimeStamp]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_MeasNo] ON [dbo].[QUAL_SampleData] ([SampleUUID], [MeasNo] DESC) ON [PRIMARY]
GO
