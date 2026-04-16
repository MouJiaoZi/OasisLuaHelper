---@meta

---@class FVaultAnimInfo
---@field AnimSoftPtr UAnimMontage
FVaultAnimInfo = {}


---@class UVaultAnimDataAsset: UVaultAnimDataAssetBase
---@field VaultAnimMap ULuaMapHelper<string, FVaultAnimInfo>
---@field FPPVaultAnimMap ULuaMapHelper<string, FVaultAnimInfo>
---@field bSyncLoadVaultAnim boolean
---@field NewFPPVaultAnimMap ULuaMapHelper<string, FVaultAnimInfo>
local UVaultAnimDataAsset = {}

function UVaultAnimDataAsset:OnAsyncLoadingFinished() end

---@param World UWorld
function UVaultAnimDataAsset:OnPostLoadMapWithWorld(World) end
