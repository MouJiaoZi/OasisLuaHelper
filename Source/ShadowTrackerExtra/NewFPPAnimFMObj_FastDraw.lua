---@meta

---@class UNewFPPAnimFMObj_FastDrawForegrip: UNewFPPAnimFMObj_Foregrip
local UNewFPPAnimFMObj_FastDrawForegrip = {}


---@class UNewFPPAnimFMObj_FastDraw: UAnimFunctionModule_ObjInstance
---@field bIsFastDrawing boolean
---@field bIsInFastDrawProcess boolean
---@field bUseRiflePoseOverride boolean
---@field FastDrawAlpha number
---@field LeftHandIdleAlpha number
---@field LeftHandWalkAlpha number
---@field LeftHandRunAlpha number
---@field LeftHandSprintAlpha number
---@field CurrentLeftHandAlpha number
---@field VBIKHandGunFollowAlpha number
---@field bIsExitingFastDraw boolean
---@field bUsePistolPoseOverride boolean
---@field bPendingClearOverrideOnAnimListChanged boolean
---@field bPendingApplyFastDrawIKDisable boolean
---@field bIKRestoredEarly boolean
---@field bIsDrivingFastDrawExitBlendOut boolean
---@field FastDrawExitTotalDuration number
---@field FastDrawExitElapsedTime number
---@field ExitByWhatWeapon EFastDrawInterruptActionType
---@field FastDrawExitBlendOutAlpha number
---@field FastDrawExitBlendOutLeadTime number
local UNewFPPAnimFMObj_FastDraw = {}

function UNewFPPAnimFMObj_FastDraw:RefreshPoseChangeAnimation() end

function UNewFPPAnimFMObj_FastDraw:EnterFastDraw() end

---@param InterruptActionType EFastDrawInterruptActionType
function UNewFPPAnimFMObj_FastDraw:LeaveFastDraw(InterruptActionType) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function UNewFPPAnimFMObj_FastDraw:OnChangeCurrentUsingFastDrawWeapon(TargetChangeSlot) end

---@param FastDrawWeapon ASTExtraWeapon
---@param OtherWeapon ASTExtraWeapon
---@param InterruptActionType EFastDrawInterruptActionType
function UNewFPPAnimFMObj_FastDraw:OnFastDrawInterrupt(FastDrawWeapon, OtherWeapon, InterruptActionType) end

---@param AnimType EExtraAnimDataType_FastDraw
---@param LogicTime number
function UNewFPPAnimFMObj_FastDraw:PlayWeaponAnimation_FastDraw(AnimType, LogicTime) end

---@param ParentAnimInstance USTExtraNewFPPAnimInstance
---@param AnimType EExtraAnimDataType_FastDraw
function UNewFPPAnimFMObj_FastDraw:PlayDefaultMontage(ParentAnimInstance, AnimType) end

---@param AnimMontage UAnimMontage
---@param bInterrupted boolean
function UNewFPPAnimFMObj_FastDraw:ExitFastDrawState(AnimMontage, bInterrupted) end

function UNewFPPAnimFMObj_FastDraw:EnterFastDrawState() end

function UNewFPPAnimFMObj_FastDraw:TryEnterFastDraw() end

---@param OwnerCharacter ASTExtraBaseCharacter
function UNewFPPAnimFMObj_FastDraw:TryEnterFastDrawWithTPPSync(OwnerCharacter) end

function UNewFPPAnimFMObj_FastDraw:TryEnterFastDraw_CheckAndEnter() end

---@param EventMsg string
function UNewFPPAnimFMObj_FastDraw:HandleOnAnimListChanged(EventMsg) end

function UNewFPPAnimFMObj_FastDraw:FinishFastDrawProcess() end

function UNewFPPAnimFMObj_FastDraw:ClearExitingFastDrawResidual() end

function UNewFPPAnimFMObj_FastDraw:ResetFastDrawState() end

---@return boolean
function UNewFPPAnimFMObj_FastDraw:TryApplyFastDrawIKDisable() end

function UNewFPPAnimFMObj_FastDraw:RestoreIKFromFastDraw() end

function UNewFPPAnimFMObj_FastDraw:EarlyRestoreIKFromFastDraw() end

---@param AnimType EExtraAnimDataType_FastDraw
---@param LogicTime number
---@param StartPercent number
function UNewFPPAnimFMObj_FastDraw:PlayFastDrawMontageInternal(AnimType, LogicTime, StartPercent) end
