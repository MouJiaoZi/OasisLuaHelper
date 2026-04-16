---@meta

---@class FWeaponAbilityKillLevelConfig
---@field NeedKillCount number
---@field ParticleEffectList ULuaArrayHelper<FParticleRes>
---@field ParticleEffectDisplayCondition FRoleAndQualitySelector
---@field OverrideDefaultEffect boolean
FWeaponAbilityKillLevelConfig = {}


---@class UBackpackWeaponKillLevelAbilitytHanle: UBackpackWeaponAbilityHandle
---@field KillLevelConfigList ULuaArrayHelper<FWeaponAbilityKillLevelConfig>
local UBackpackWeaponKillLevelAbilitytHanle = {}

---@param KillLevelConfig FWeaponAbilityKillLevelConfig
---@param KillCount number
---@return boolean
function UBackpackWeaponKillLevelAbilitytHanle:GetKillLevelConfigByKillCount(KillLevelConfig, KillCount) end

---@param KillCount number
---@return number
function UBackpackWeaponKillLevelAbilitytHanle:GetKillLevelIndex(KillCount) end
