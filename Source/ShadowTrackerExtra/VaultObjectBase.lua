---@meta

---@class FDynamicVaultAnimDataAsset
---@field Priority number
FDynamicVaultAnimDataAsset = {}


---@class UVaultObjectBase: UObject
---@field bPreLoadAllAnim boolean
---@field VaultAnimDataAsset UVaultAnimDataAssetBase
---@field BackupVaultAnimDataAsset UVaultAnimDataAssetBase
---@field DynamicVaultAnimDataAssetArray ULuaArrayHelper<FDynamicVaultAnimDataAsset>
local UVaultObjectBase = {}

function UVaultObjectBase:OnVaultAnimDataAssetLoaded() end
