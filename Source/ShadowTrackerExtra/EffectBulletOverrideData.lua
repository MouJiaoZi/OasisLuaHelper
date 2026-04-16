---@meta

---@class FEffectBulletOverrideData
---@field bEnableConfig boolean
---@field OverrideConfigIndex number
---@field CreateEffectIntervalNum number
FEffectBulletOverrideData = {}


---@class UEffectBulletOverrideDataAsset: UDataAsset
---@field OverrideConfigList ULuaArrayHelper<FWeaponVisualBulletClientModeConfig>
---@field GlobalOverrideData FEffectBulletOverrideData
---@field WeaponPathToOverrideDataMap ULuaMapHelper<FSoftObjectPath, FEffectBulletOverrideData>
---@field InternalAssetNameToOverrideDataMap ULuaMapHelper<string, FEffectBulletOverrideData>
local UEffectBulletOverrideDataAsset = {}
