---@meta

---@class FLazyCacheAssetItem
---@field AssetPath string
---@field bNoGC boolean
---@field bCacheSubClass boolean
FLazyCacheAssetItem = {}


---@class UStaticAssetRefStrategic: UAssetRefStrategicBase
---@field PreloadAssetTablePath_Resources string
---@field PreloadAssetTablePath_Blueprints string
---@field PreloadAssetTablePath_Skills string
---@field PreloadAssetTablePath_Scripts string
---@field BTModeTablePath string
local UStaticAssetRefStrategic = {}

---@param InURL FURL
function UStaticAssetRefStrategic:PreloadContentForURL(InURL) end

---@param Object UObject
function UStaticAssetRefStrategic:CacheLazyTarget(Object) end
