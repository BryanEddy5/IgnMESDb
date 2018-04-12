CREATE TABLE [dbo].[QUAL_DefSignal]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[DefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SignalName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SignalKind] [int] NOT NULL,
[Enabled] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_DefSignal] ADD CONSTRAINT [PK__QUAL_Def__3214EC27D1959DCF] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[QUAL_DefSignal] ([DefUUID], [SignalName]) ON [PRIMARY]
GO
