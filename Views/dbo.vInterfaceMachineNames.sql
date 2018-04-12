SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/*
Author:		Bryan Eddy
Desc:		Get machines/resources from APS
Date:		3/16/2018
Version:	1
Update:		n/a
*/
CREATE VIEW [dbo].[vInterfaceMachineNames]
AS
SELECT MachineName, MachineID
FROM [NAACAB-SCH01].PlanetTogether_Data_Prod.setup.vMachineNames
GO
