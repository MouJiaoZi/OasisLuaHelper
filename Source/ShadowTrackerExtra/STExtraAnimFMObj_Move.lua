---@meta

---@class USTExtraAnimFMObj_Move: UAnimFunctionModule_ObjInstance
---@field ReloadMoveSpeed number
---@field MoveDirParachuteLerpSpeed number
---@field MoveDirNormalLerpSpeed number
---@field SwitchPoseTransTime number
---@field ScopeVelocityInterpSpeed number
---@field SwitchPoseMaxTime number
---@field SwitchPoseMaxTime_RunTime number
---@field MovementChangeBlendTimeDefault number
---@field MovementChangeBlendTimeOnce number
---@field e_MovementMode EMovementMode
---@field e_LastMovementMode EMovementMode
---@field e_CustomMovementMode number
---@field e_LastCustomMovementMode number
---@field bIsEnableLockSprintFrontSpeed boolean
---@field v_MoveVelocity FVector
---@field v_LastMoveVelocity FVector
---@field v_MoveDir FVector
---@field MovementBlendTime number
---@field b_MovementChanged boolean
---@field MovementChangeBlendTime number
---@field b_IsFlyingWithoutParachute boolean
---@field b_Move boolean
---@field b_SwitchingPose boolean
---@field b_PlaySwitchingPoseAnim boolean
---@field SwitchPoseMaxTimeCounter number
---@field b_SwitchingCharacterPose boolean
---@field SwitchCharacterPoseCounter number
---@field b_MoveAdditiveEnabled boolean
---@field b_IsMoveAdditiveValid boolean
---@field b_IsMoveAdditiveDestValid boolean
---@field b_IsVaulting boolean
---@field b_IsLastVaulting boolean
---@field CacheLastPose ESTEPoseState
---@field CacheNewPose ESTEPoseState
---@field CharLastPoseType ECharacterPoseType
---@field CharNewPoseType ECharacterPoseType
---@field NeedUpdateAnim boolean
---@field bIsInObserveState boolean
---@field bIsSprintAndInObserveState boolean
local USTExtraAnimFMObj_Move = {}

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function USTExtraAnimFMObj_Move:OnPoseStateChange(LastPose, NewPose) end

---@param bIsEquip boolean
---@param WeaponOwner AActor
---@param Weapon ASTExtraWeapon
function USTExtraAnimFMObj_Move:OnWeaponChange(bIsEquip, WeaponOwner, Weapon) end
