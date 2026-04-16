---@meta

---@class eEntityMemberAnimationState
---@field None number
---@field Idle number
---@field Run number
---@field Walk number
---@field AttackedIdle number
---@field AttackedWalk number
---@field AttackedRunning number
eEntityMemberAnimationState = {}


---@class USTMassiveEntityAnimInstance: UAnimInstance
---@field MemberAnimState eEntityMemberAnimationState
---@field MemberNearDeathTime number
---@field MinWalkSpeed number
---@field MinRunSpeed number
---@field MaxRefreshAnimDeltaTime number
---@field MemberHitTime number
---@field bDead boolean
---@field HitTime number
---@field RefreshAnimDeltaTime number
local USTMassiveEntityAnimInstance = {}

---@param EntityState eEntityState
---@return boolean
function USTMassiveEntityAnimInstance:BP_HasEntityState(EntityState) end

---@param EntityState eEntityState
function USTMassiveEntityAnimInstance:BP_ClearEntityState(EntityState) end

---@param EntityState eEntityState
function USTMassiveEntityAnimInstance:BP_SetEntityState(EntityState) end
