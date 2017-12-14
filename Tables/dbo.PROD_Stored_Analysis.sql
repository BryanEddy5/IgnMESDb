CREATE TABLE [dbo].[PROD_Stored_Analysis]
(
[ID] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProviderName] [varchar] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Filters] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CompareBys] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataPoints] [varchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataFormat] [int] NULL,
[TimeStamp] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PROD_Stored_Analysis] ADD CONSTRAINT [PK__PROD_Sto__3214EC27769A2292] PRIMARY KEY CLUSTERED  ([ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[PROD_Stored_Analysis] ([Name]) ON [PRIMARY]
GO
