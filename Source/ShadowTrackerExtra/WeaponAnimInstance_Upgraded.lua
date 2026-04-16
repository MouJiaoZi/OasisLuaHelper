---@meta

---@class UWeaponAnimInstance_Upgraded: UWeaponAnimInstanceBase
local UWeaponAnimInstance_Upgraded = {}

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function UWeaponAnimInstance_Upgraded:OnCharPoseStateChanged(LastPose, NewPose) end

---@param ChangedState EPawnState
function UWeaponAnimInstance_Upgraded:OnCharStateChanged(ChangedState) end

---@param stateID number
---@param interruptedBy number
function UWeaponAnimInstance_Upgraded:OnCharStateInterrupted(stateID, interruptedBy) end

---@param InCurrentStates number
---@param InPrevStates number
function UWeaponAnimInstance_Upgraded:OnSimulateCharStateChanged(InCurrentStates, InPrevStates) end

---@param MontageToPlay UAnimMontage
---@param InPlayRate number
---@param ReturnValueType EMontagePlayReturnType
---@param InTimeToStartMontageAt number
function UWeaponAnimInstance_Upgraded:Control_Montage_Play(MontageToPlay, InPlayRate, ReturnValueType, InTimeToStartMontageAt) end

---@param InBlendOutTime number
---@param Montage UAnimMontage
function UWeaponAnimInstance_Upgraded:Control_Montage_Stop(InBlendOutTime, Montage) end
