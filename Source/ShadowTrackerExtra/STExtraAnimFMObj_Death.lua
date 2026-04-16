---@meta

---@class USTExtraAnimFMObj_Death: UAnimFunctionModule_ObjInstance
---@field bEnableMovementChangedBlend boolean
---@field SwitchPoseTransTime number
---@field NearDeathMoveBlendInTime number
---@field NearDeathMoveBlendOutTime number
---@field MovementBlendTime number
---@field b_MovementChanged boolean
---@field b_IsNearDeathStatus boolean
---@field b_IsNearDeathStatusWithoutWeapon boolean
---@field b_IsEnteringNearDeathAnim boolean
---@field f_EnterNearDeathLastUpdateTime number
---@field f_EnterNearDeathCDTime number
---@field b_DyingWeaponAnimValid boolean
---@field b_IsDyingFaceRotBlending boolean
---@field f_DyingFaceRotBlendRate number
---@field f_NearDeathMoveBlendInTime number
---@field f_NearDeathMoveBlendOutTime number
---@field LastUpdateMovementTime number
local USTExtraAnimFMObj_Death = {}

---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function USTExtraAnimFMObj_Death:OnRepHealthStateEvent(PrevStatus, NewStatus) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param NearDeath boolean
function USTExtraAnimFMObj_Death:SetIsNearDeathStatus(TargetCharacter, NearDeath) end
