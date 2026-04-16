---@meta

---@class UWeaponInspectComponent: UWeaponLogicBaseComponent
---@field bIsInspecting boolean
---@field InspectPersistEffectClass UPersistEffectBase
---@field InspectDuration number
---@field ClientInspectDuration number
---@field MutexPawnState ULuaArrayHelper<EPawnState>
---@field MutexPawnState_NewFPP ULuaArrayHelper<EPawnState>
---@field ServerInspectFailedTipID number
---@field bUseDefaultAnimInSimulated boolean
---@field bDisableInSimulated boolean
---@field bHideWeaponMesh boolean
---@field bEnableMutexCastingSkill boolean
---@field MutexSkillWhiteList ULuaArrayHelper<AUTSkill>
local UWeaponInspectComponent = {}

---@return boolean
function UWeaponInspectComponent:ClientInspectWeapon() end

function UWeaponInspectComponent:ClientInterruptInspectWeapon() end

function UWeaponInspectComponent:ClientInterruptInspectWeaponBP() end

---@param InspectDuration number
function UWeaponInspectComponent:ServerInspectWeapon(InspectDuration) end

---@return boolean
function UWeaponInspectComponent:CanInspectWeapon() end

---@param Buff UPersistEffectBase
function UWeaponInspectComponent:OnCancleInspectPersistEffect(Buff) end

---@return boolean
function UWeaponInspectComponent:GetWeaponIsOldSkeleton() end

---@return boolean
function UWeaponInspectComponent:GetWeaponIsNewSkeleton() end

function UWeaponInspectComponent:EnterInspecting() end

function UWeaponInspectComponent:LeaveInspecting() end

---@return number
function UWeaponInspectComponent:GetOverrideInspectDuration() end

---@return boolean
function UWeaponInspectComponent:ShouldHideWeaponMeshWhenInspecting() end

---@return boolean
function UWeaponInspectComponent:ShouldUseSpecificFOVWhenInspecting() end

---@return boolean
function UWeaponInspectComponent:ShouldUseOldFPP() end

---@return boolean
function UWeaponInspectComponent:ShouldUseNewFPPInspect() end
