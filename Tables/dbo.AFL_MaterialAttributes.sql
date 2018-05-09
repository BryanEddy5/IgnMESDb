CREATE TABLE [dbo].[AFL_MaterialAttributes]
(
[OracleItemPropertyGuid] [uniqueidentifier] NOT NULL CONSTRAINT [DF_AFL_MaterialAttributes_OracleItemPropertyGuid] DEFAULT (newid()),
[OracleItemSetupAttributeID] [uniqueidentifier] NULL,
[OracleItemNumber] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Setup] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MachineID] [int] NULL,
[AttributeNameID] [int] NULL,
[Name] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Value] [varchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DataType] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedTime] [datetime] NOT NULL CONSTRAINT [DF_AFL_MaterialAttributes_CreatedTime] DEFAULT (getdate()),
[LastModified] [datetime] NOT NULL CONSTRAINT [DF_AFL_MaterialAttributes_LastModified] DEFAULT (getdate()),
[IsEnabled] [bit] NOT NULL CONSTRAINT [DF_AFL_MaterialAttributes_IsEnabled_1] DEFAULT ((1)),
[Revision] [int] NOT NULL CONSTRAINT [DF_AFL_MaterialAttributes_Revision] DEFAULT ((1))
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[AFL_MaterialAttributes_updateModified] ON [dbo].[AFL_MaterialAttributes]
AFTER UPDATE
AS
       UPDATE [dbo].[AFL_MaterialAttributes]
       SET [LastModified]= GetDate()
       FROM Inserted i
       WHERE [dbo].[AFL_MaterialAttributes].OracleItemPropertyGuid = i.OracleItemPropertyGuid

GO
ALTER TABLE [dbo].[AFL_MaterialAttributes] ADD CONSTRAINT [PK_AFL_MaterialAttributes] PRIMARY KEY CLUSTERED  ([OracleItemPropertyGuid]) ON [PRIMARY]
GO
