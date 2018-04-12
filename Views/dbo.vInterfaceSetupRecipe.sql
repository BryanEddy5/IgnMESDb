SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [dbo].[vInterfaceSetupRecipe]
AS
SELECT        dbo.REC_ProdItem.ItemPath,REC_Recipe.Name AS Setup, REC_ProdItemValue.Name AS ProdItemValue, 
                         REC_ProdItemValue.Description AS ProdItemValueDescription, REC_RecipeValue.Value AS RecipeValue, 
                         REC_SubProdItemValue.Value AS SubProdItemValue,  COALESCE(dbo.REC_RecipeValue.Value, REC_SubProdItemValue.Value) AS AttributeValue,
						 REC_ProdItem.ProdItemUUID, REC_ProdItem.ProjectUUID, REC_ProdItemValue.ProdItemValueUUID,REC_Recipe.RecipeUUID,RecipeValueUUID
						 , REC_Recipe.DateRevised SetupDateRevised, REC_RecipeValue.DateRevised RecipeValueDateRevised, CAST(dbo.REC_ProdItemValue.Description AS INT) AttributeID
FROM            REC_ProdItemValue INNER JOIN
                         REC_ProdItem ON REC_ProdItemValue.ProdItemUUID = REC_ProdItem.ProdItemUUID INNER JOIN
                         REC_Recipe INNER JOIN
                         REC_RecipeValue ON REC_Recipe.RecipeUUID = REC_RecipeValue.RecipeUUID ON REC_ProdItemValue.ProdItemUUID = REC_RecipeValue.ProdItemUUID AND 
                         REC_ProdItemValue.ProdItemValueUUID = REC_RecipeValue.ProdItemValueUUID INNER JOIN
                         REC_SubProdItemValue ON REC_ProdItemValue.ProdItemValueUUID = REC_SubProdItemValue.ProdItemValueUUID AND 
                         REC_ProdItemValue.ProdItemUUID = REC_SubProdItemValue.ProdItemUUID
GO
