CREATE TABLE [dbo].[SampleDefAttr]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[SampleDefID] [int] NOT NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Required] [int] NOT NULL,
[Enabled] [int] NOT NULL,
[DataType] [int] NOT NULL,
[Format] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DefaultValue] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MinValue] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaxValue] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Units] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MeasCount] [int] NULL,
[DefaultChart] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Weight] [float] NULL,
[Order] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SampleDefAttr] ADD CONSTRAINT [PK__SampleDe__3214EC2791634555] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Parent] ON [dbo].[SampleDefAttr] ([SampleDefID], [Name]) ON [PRIMARY]
GO
