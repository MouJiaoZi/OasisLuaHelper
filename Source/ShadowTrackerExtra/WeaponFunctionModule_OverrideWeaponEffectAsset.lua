---@meta

---@class FWeaponEffectAssetOverrideConfig
---@field Key string
---@field bOnlyForTeamMate boolean
---@field IgnoreCheckTeamMateGameModeStates ULuaArrayHelper<string>
FWeaponEffectAssetOverrideConfig = {}


---@class UWeaponFunctionModule_OverrideWeaponEffectAsset: UWeaponFunctionModuleBase
---@field Configs ULuaArrayHelper<FWeaponEffectAssetOverrideConfig>
---@field OverrideAssets ULuaMapHelper<string, UObject>
local UWeaponFunctionModule_OverrideWeaponEffectAsset = {}

---@param InKey string
---@param InWeapon ASTExtraWeapon
function UWeaponFunctionModule_OverrideWeaponEffectAsset:GetOverrideWeaponAsset(InKey, InWeapon) end

function UWeaponFunctionModule_OverrideWeaponEffectAsset:OnAsyncLoadFinished() end

---@param Slot number
---@param bEquip boolean
function UWeaponFunctionModule_OverrideWeaponEffectAsset:OnWeaponPartsEquip(Slot, bEquip) end

---@param InWeapon ASTExtraWeapon
---@param Config FWeaponEffectAssetOverrideConfig
---@return boolean
function UWeaponFunctionModule_OverrideWeaponEffectAsset:BPCheckOverride(InWeapon, Config) end
