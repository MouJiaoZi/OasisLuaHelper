---@meta

---@class FClassicVaultAnimData
---@field AnimSoftPtr UAnimMontage
FClassicVaultAnimData = {}


---@class UClassicVaultAnimDataAsset: UVaultAnimDataAssetBase
---@field VaultAnimMap ULuaMapHelper<string, FClassicVaultAnimData>
---@field FPPVaultAnimMap ULuaMapHelper<string, FClassicVaultAnimData>
---@field bSyncLoadVaultAnim boolean
local UClassicVaultAnimDataAsset = {}

function UClassicVaultAnimDataAsset:OnAsyncLoadingFinished() end

---@param World UWorld
function UClassicVaultAnimDataAsset:OnPostLoadMapWithWorld(World) end
