---@meta

---@class URuntimeAssetRefStrategic: UAssetRefStrategicBase
---@field CacheAvatarAssetMinDeviceLevel number
---@field WhiteListGameModes ULuaArrayHelper<string>
---@field AssetCacheTime ULuaMapHelper<UObject, number>
local URuntimeAssetRefStrategic = {}

---@param AssetRefList ULuaArrayHelper<FSoftObjectPath>
function URuntimeAssetRefStrategic:HandleAvatarAsyncLoadFinished(AssetRefList) end
