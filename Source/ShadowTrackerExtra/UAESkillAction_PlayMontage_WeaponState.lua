---@meta

---@class FSAPlayMontageWeaponStateInstanceStruct
FSAPlayMontageWeaponStateInstanceStruct = {}


---@class FWeaponStateToAnimPair
---@field weaponTypeNew EWeaponTypeNew
---@field PoseMontageData FSkillPoseMontageData
---@field FPPPoseMontageData FSkillPoseMontageData
---@field NewFPPPoseMontageData FSkillPoseMontageData
FWeaponStateToAnimPair = {}


---@class UUAESkillAction_PlayMontage_WeaponState: USTExtraBuffAction
---@field StopPrevMontage boolean
---@field bUseValue boolean
---@field PlayRate number
---@field EstimatedTimeKey any
---@field PlayRateDeviation number
---@field PlayTimeDeviation number
---@field emptyHand FWeaponStateToAnimPair
---@field handWeapon FWeaponStateToAnimPair
---@field WeaponTypes ULuaArrayHelper<FWeaponStateToAnimPair>
---@field bAdditionalWeaponUseDifferentMontage boolean
---@field AdditionalWeapon FWeaponStateToAnimPair
---@field StopAnimAfterAction boolean
---@field UpdateAnimAfterChange boolean
local UUAESkillAction_PlayMontage_WeaponState = {}
