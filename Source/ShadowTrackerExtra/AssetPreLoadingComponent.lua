---@meta

---@class FPreLoadAssetConfigItem
---@field TargetAssetPtr UObject
---@field bIsClass boolean
---@field MinDeviceMemoryLevel number
---@field bSupportClient boolean
---@field bSupportDS boolean
FPreLoadAssetConfigItem = {}


---@class UAssetPreLoadingComponent: UActorComponent
---@field PreLoadAssetConfigList ULuaArrayHelper<FPreLoadAssetConfigItem>
local UAssetPreLoadingComponent = {}

---@param Item FPreLoadAssetConfigItem
---@param PC ASTExtraPlayerController
function UAssetPreLoadingComponent:LoadAssetItem(Item, PC) end

---@param Path FSoftObjectPath
---@param PC ASTExtraPlayerController
function UAssetPreLoadingComponent:LoadAssetItemFinished(Path, PC) end

---@param PC ASTExtraPlayerController
function UAssetPreLoadingComponent:StartLoad(PC) end
