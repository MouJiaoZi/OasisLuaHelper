---@meta

---@class EExtraAnimDataType_FastDraw
---@field FastDraw_SwitchIn number @进入快拔(UAnimMontage)
---@field FastDraw_SwitchOut_LeftWeapon number @离开快拔_收长枪_左手(UAnimMontage)
---@field FastDraw_SwitchOut_RightWeapon number @离开快拔_收手枪_右手(UAnimMontage)
---@field FastDraw_SwitchOut_All number @离开快拔_收起所有(UAnimMontage)
---@field FastDraw_KeepingAimOff number @快拔瞄准(UAimOffsetBlendSpace)
---@field FastDraw_KeepingMoveBS number @快拔状态的移动动作(UBlendSpace2D)
---@field FastDraw_Obstructed number @快拔顶墙动画(UBlendSpace)
EExtraAnimDataType_FastDraw = {}


---@class USTExtraAnimData_FastDraw: USTExtraAnimDataConfigWithSubAnim
---@field bHasRegisted boolean
---@field bHasReplaceSubAnim boolean
---@field DelayRemoveTime number
---@field TPPSubAnimDataList_PreFastDraw ULuaArrayHelper<FAnimMapData>
---@field NewFPPSubAnimDataList_PreFastDraw ULuaArrayHelper<FAnimMapData>
---@field AnimLayerOccupyIndex number
local USTExtraAnimData_FastDraw = {}

---@param RegistToAnimList UUAECharAnimListCompBase
function USTExtraAnimData_FastDraw:BindWeapon(RegistToAnimList) end

---@param IsEquip boolean
---@param SelfRef AActor
---@param Weapon ASTExtraWeapon
function USTExtraAnimData_FastDraw:OnCurrentWeaponChange(IsEquip, SelfRef, Weapon) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function USTExtraAnimData_FastDraw:OnFastWeaponChange(TargetChangeSlot) end

---@param LastWeaponState EFreshWeaponStateType
---@param CurrentWeaponState EFreshWeaponStateType
function USTExtraAnimData_FastDraw:HandleOwnerWeaponStateChange(LastWeaponState, CurrentWeaponState) end

function USTExtraAnimData_FastDraw:DelayRemoveFastWeaponAnim() end

---@param FastDrawWeapon ASTExtraWeapon
---@param OtherWeapon ASTExtraWeapon
---@param InterruptActionType EFastDrawInterruptActionType
function USTExtraAnimData_FastDraw:InterruptFastDraw(FastDrawWeapon, OtherWeapon, InterruptActionType) end

function USTExtraAnimData_FastDraw:ReplaceSubAnim_OnAddEvent() end

function USTExtraAnimData_FastDraw:RemoveSubAnim_OnRemoveEvent() end
