---@meta

---@class UMaterialExpressionLandscapeLayerWeight: UMaterialExpression
---@field Base FExpressionInput
---@field Layer FExpressionInput
---@field ParameterName string
---@field PreviewWeight number
---@field ConstBase FVector @only used if Base is not hooked up
---@field ExpressionGUID FGuid @GUID that should be unique within the material, this is used for parameter renaming.
local UMaterialExpressionLandscapeLayerWeight = {}


---@class UMaterialExpressionSTELandscapeLayerWeight: UMaterialExpressionLandscapeLayerWeight
local UMaterialExpressionSTELandscapeLayerWeight = {}
