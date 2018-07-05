SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Bryan Eddy
-- Create date: 6/22/2018
-- Description:	procedure to populate MES vInterfaceItemAttributes
-- Version:		1
-- Update:		n/a
-- =============================================
CREATE PROCEDURE [dbo].[usp_getMesItemAttributeData] 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


EXEC [NAACAB-SCH01].PlanetTogether_Data_Prod.mes.usp_GetItemAttributes



END
GO
