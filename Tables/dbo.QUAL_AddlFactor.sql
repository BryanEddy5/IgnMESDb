CREATE TABLE [dbo].[QUAL_AddlFactor]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SampleUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FactorName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FactorDataType] [int] NOT NULL,
[FactorValue] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_AddlFactor] ADD CONSTRAINT [PK__QUAL_Add__3214EC270C423F20] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Factor] ON [dbo].[QUAL_AddlFactor] ([FactorName], [FactorDataType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Sample] ON [dbo].[QUAL_AddlFactor] ([SampleUUID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[QUAL_AddlFactor] ([SampleUUID], [FactorName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Time] ON [dbo].[QUAL_AddlFactor] ([TimeStamp]) ON [PRIMARY]
GO
