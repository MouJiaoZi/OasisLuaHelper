---@meta

---@class UEMPSeekAndLockWeaponComponent: USeekAndLockWeaponComponent
---@field GrenadeSkillClass_ShouldUpdate AUTSkill
---@field GrenadeSkillPhases_ShouldUpdate ULuaArrayHelper<number>
---@field LoadedGrenadeSkillClass AUTSkill
local UEMPSeekAndLockWeaponComponent = {}

---@param LockTarget AActor
function UEMPSeekAndLockWeaponComponent:RPC_Server_UpdateCurLockTarget(LockTarget) end
