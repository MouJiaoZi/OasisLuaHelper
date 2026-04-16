---@meta

---@class ETextureChannel
---@field R number
---@field G number
---@field B number
---@field A number
ETextureChannel = {}


---@class FTerrainLayer
---@field LayerName string
---@field bUseTextureArray boolean
---@field DiffuseTextureIndex number
---@field NormalTextureIndex number
---@field Weight FExpressionInput
---@field UV FExpressionInput
---@field DiffuseTexture FExpressionInput
---@field NormalTexture FExpressionInput
FTerrainLayer = {}


---@class FTerrainLayerDesert
---@field LayerName string
---@field bUseTextureArray boolean
---@field DiffuseTextureIndex number
---@field NormalTextureIndex number
---@field Weight FExpressionInput
---@field UV FExpressionInput
---@field DiffuseTexture FExpressionInput
---@field NormalTexture FExpressionInput
---@field Specular FExpressionInput
FTerrainLayerDesert = {}


---@class FTerrainLayerHeight
---@field LayerName string
---@field bUseTextureArray boolean
---@field DiffuseTextureIndex number
---@field NormalTextureIndex number
---@field Weight FExpressionInput
---@field UV FExpressionInput
---@field UV_Far FExpressionInput
---@field DiffuseTexture FExpressionInput
---@field NormalTexture FExpressionInput
FTerrainLayerHeight = {}


---@class FTerrainLayerHeightBlend
---@field LayerName string
---@field bUseTextureArray boolean
---@field DiffuseTextureIndex number
---@field NormalTextureIndex number
---@field Weight FExpressionInput
---@field UV FExpressionInput
---@field UV_Far FExpressionInput
---@field HeightFactor FExpressionInput
---@field DiffuseTexture FExpressionInput
---@field NormalTexture FExpressionInput
FTerrainLayerHeightBlend = {}


---@class UMaterialExpressionTerrainBlendBase: UMaterialExpression
---@field DDxDDyTiling number
local UMaterialExpressionTerrainBlendBase = {}


---@class UMaterialExpressionTerrainBlend: UMaterialExpressionTerrainBlendBase
---@field UV FExpressionInput
---@field Inputs ULuaArrayHelper<FTerrainLayer>
---@field ConstCoordinate number @only used if Coordinates is not hooked up
local UMaterialExpressionTerrainBlend = {}


---@class UMaterialExpressionTerrainBlendDesert: UMaterialExpressionTerrainBlendBase
---@field UV FExpressionInput
---@field Inputs ULuaArrayHelper<FTerrainLayerDesert>
---@field ConstCoordinate number @only used if Coordinates is not hooked up
local UMaterialExpressionTerrainBlendDesert = {}


---@class UMaterialExpressionTerrainBlendHeight: UMaterialExpressionTerrainBlendBase
---@field UV FExpressionInput
---@field CameraWeight FExpressionInput
---@field bUseHPTerrainHeight boolean
---@field Inputs ULuaArrayHelper<FTerrainLayerHeight>
---@field ConstCoordinate number @only used if Coordinates is not hooked up
local UMaterialExpressionTerrainBlendHeight = {}


---@class UMaterialExpressionTerrainBlendHeightBlend: UMaterialExpressionTerrainBlendBase
---@field UV FExpressionInput
---@field CameraWeight FExpressionInput
---@field HeightGlobal FExpressionInput
---@field Inputs ULuaArrayHelper<FTerrainLayerHeightBlend>
---@field ConstCoordinate number @only used if Coordinates is not hooked up
local UMaterialExpressionTerrainBlendHeightBlend = {}
