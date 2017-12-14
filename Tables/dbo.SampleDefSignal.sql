CREATE TABLE [dbo].[SampleDefSignal]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SampleDefID] [int] NOT NULL,
[SignalName] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Enabled] [int] NOT NULL,
[SignalKind] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SampleDefSignal] ADD CONSTRAINT [PK__SampleDe__3214EC2794E537B0] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[SampleDefSignal] ([SampleDefID], [SignalName]) ON [PRIMARY]
GO
