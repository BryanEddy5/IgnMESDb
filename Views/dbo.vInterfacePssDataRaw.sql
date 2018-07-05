SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/*
Author:		Bryan Eddy
Date:		6/22/2018
Desc:		View of raw PSS data
Version:	1
Update:		n/a
*/

CREATE VIEW [dbo].[vInterfacePssDataRaw]
AS

SELECT ProcessID,
       AttributeID,
       AttributeDesc,
       AttributeName,
       SetupID,
       SetupNumber,
       AttributeValue,
       MachineSpecific,
       MinValue,
       Active,
       EffectiveDate,
       AttrEffectiveDate,
       AttributeGroupID,
       IneffectiveDate,
       AttributeUOM,
       AttributeIneffectiveDate,
       SetupAttributesIneffectiveDate,
       MachineNumber,
       PssMachineID,
       PssProcessID,
       AttributeViewOrder,
       AttributeDataType,
       SigDigits,
	   DefaultMinTol,
	   DefaultMaxTol
FROM [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.vInterfaceSetupAttributes
GO
