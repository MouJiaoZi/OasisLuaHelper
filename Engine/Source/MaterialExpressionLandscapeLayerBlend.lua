---@meta

---@class ELandscapeLayerBlendType
---@field LB_WeightBlend number
---@field LB_AlphaBlend number
---@field LB_HeightBlend number
ELandscapeLayerBlendType = {}


---@class FLayerBlendInput
---@field LayerName string
---@field BlendType ELandscapeLayerBlendType
---@field LayerInput FExpressionInput
---@field HeightInput FExpressionInput
---@field PreviewWeight number
---@field ConstLayerInput FVector @only used if LayerInput is not hooked up
---@field ConstHeightInput number @only used if HeightInput is not hooked up
FLayerBlendInput = {}


---@class UMaterialExpressionLandscapeLayerBlend: UMaterialExpression
---@field Layers ULuaArrayHelper<FLayerBlendInput>
---@field ExpressionGUID FGuid @GUID that should be unique within the material, this is used for parameter renaming.
local UMaterialExpressionLandscapeLayerBlend = {}


---@class UMaterialExpressionSTELandscapeLayerBlend: UMaterialExpressionLandscapeLayerBlend
local UMaterialExpressionSTELandscapeLayerBlend = {}
