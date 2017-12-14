CREATE TABLE [dbo].[QUAL_Stored_SPC]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DefName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DefUUID] [varchar] (36) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AttrName] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Measurement] [varchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NonconformingFilter] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NonconformityFilter] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParetoFilter] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Filters] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ControlLimits] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Signals] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DataFormat] [int] NOT NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[QUAL_Stored_SPC] ADD CONSTRAINT [PK__QUAL_Sto__3214EC279BCE6910] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[QUAL_Stored_SPC] ([Name]) ON [PRIMARY]
GO
