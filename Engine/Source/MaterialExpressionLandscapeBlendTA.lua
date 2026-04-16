---@meta

---@class FTerrainLayerTA
---@field UV FExpressionInput
---@field Name string
---@field PreviewWeight number
FTerrainLayerTA = {}


---@class UMaterialExpressionLandscapeBlendTA: UMaterialExpressionTerrainBlendBase
---@field UV FExpressionInput
---@field DiffuseTexture FExpressionInput
---@field NormalTexture FExpressionInput
---@field HeightTexture FExpressionInput
---@field RoughnessTexture FExpressionInput
---@field Layers ULuaArrayHelper<FTerrainLayerTA>
---@field ConstCoordinate number @only used if Coordinates is not hooked up
---@field ExpressionGUID FGuid @GUID that should be unique within the material, this is used for parameter renaming.
local UMaterialExpressionLandscapeBlendTA = {}
