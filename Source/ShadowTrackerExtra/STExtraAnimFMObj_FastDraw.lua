---@meta

---@class USTExtraAnimFMObj_FastDraw: UAnimFunctionModule_ObjInstance
---@field bIsInFastDrawState boolean
---@field Last_bIsInFastDrawState boolean
---@field WeaponRootToIKHandl FTransform
---@field LeftWeapon_ForgripAnimType number
---@field LeftWeaponFreshState EFreshWeaponStateType
---@field LastLeftWeaponFreshState EFreshWeaponStateType
---@field bIsCurrentWeaponEnableFastDraw boolean
---@field bIsEnteringFastDrawState boolean
---@field EnterFastDrawPercent number
---@field EnterFastDrawLength number
---@field EnterFastDrawStartTime number
---@field bIsLeavingFastDrawState boolean
---@field LeaveFastDrawPercent number
---@field LeaveFastDrawLength number
---@field LeaveFastDrawStartTime number
---@field bIsKeepingFastDrawState boolean
---@field LeaveFastDrawUnlockIKPercent number
---@field LeaveFastDrawUnlockAimAnimPercent number
---@field LastInterruptActionType EFastDrawInterruptActionType
---@field LeftWeapon_FastDrawIKOffsetTransform FTransform
---@field Target_LeftWeapon_FastDrawIKOffsetTransform FTransform
---@field LeftWeaponIKOffsetInterpSpeed number
---@field LastLeftWeapon ASTExtraShootWeapon
local USTExtraAnimFMObj_FastDraw = {}

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function USTExtraAnimFMObj_FastDraw:OnPostLocalEquipWeaponEvent(IsEquip, SelfRef, Weapon) end

---@param EnterState EFreshWeaponStateType
function USTExtraAnimFMObj_FastDraw:EnterFastDraw(EnterState) end

function USTExtraAnimFMObj_FastDraw:LeaveFastDraw() end

---@param FastDrawWeapon ASTExtraWeapon
---@param OtherWeapon ASTExtraWeapon
---@param InterruptActionType EFastDrawInterruptActionType
function USTExtraAnimFMObj_FastDraw:InterruptFastDraw(FastDrawWeapon, OtherWeapon, InterruptActionType) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function USTExtraAnimFMObj_FastDraw:OnFastWeaponChange(TargetChangeSlot) end

function USTExtraAnimFMObj_FastDraw:RefreshFastDrawAimPose() end

---@param AnimType EExtraAnimDataType_FastDraw
---@param LogicTime number
---@param OutPlayLength number
function USTExtraAnimFMObj_FastDraw:PlayWeaponAnimation_FastDraw(AnimType, LogicTime, OutPlayLength) end

function USTExtraAnimFMObj_FastDraw:CheckAndAddWeaponAnimList() end

---@param EventMsg string
function USTExtraAnimFMObj_FastDraw:OnCharacterAnimEvent(EventMsg) end
