---@meta

---@class FSwaySpringDamperParams
---@field DampingRatioStart number
---@field SmoothTimeStart number
---@field DampingRatioStop number
---@field SmoothTimeStop number
---@field MinRotationSpeed number
---@field MaxRotationSpeed number
FSwaySpringDamperParams = {}


---@class FSwayInputParams
---@field InputRotationMaxValue number
---@field InputRotationMaxSpeed number
---@field AngularToOffset number
---@field MaxSpringOffset number
---@field SmoothWeights ULuaArrayHelper<number>
---@field AngularToOffsetTest number
FSwayInputParams = {}


---@class FSwayMiscParams
---@field ScopingSpeed number
---@field CenterRotateZero number
---@field ShakeOffsetZero number
---@field ShakeVelocityZero number
---@field SightAlphaMap ULuaMapHelper<ESightType, number>
FSwayMiscParams = {}


---@class FSwayDebugParams
---@field bDisableUpdateSpringOffset boolean
---@field bDisablePoseBlend boolean
---@field bDisableWeaponCenter boolean
---@field bDisableUpdateMoveLean boolean
---@field bShowInputLog boolean
---@field bShowSpringLog boolean
---@field bShowPoseBlendLog boolean
---@field bShowMoveLeanLog boolean
FSwayDebugParams = {}


---@class UNewFPPAnimFMObj_WeaponSway: UAnimFunctionModule_ObjInstance
---@field SpringDamperParams FSwaySpringDamperParams
---@field DefaultRotatePoseParams FSwayRotatePoseParams
---@field DefaultMovePoseParams FSwayMovePoseParams
---@field DefaultScopeRotatePoseParams FSwayRotatePoseParams
---@field DefaultScopeMovePoseParams FSwayMovePoseParams
---@field InputParams FSwayInputParams
---@field MiscParams FSwayMiscParams
---@field DebugParams FSwayDebugParams
---@field DeltaView FRotator
---@field LastViewRotation FRotator
---@field ViewSpeed FVector2D
---@field SmoothList ULuaArrayHelper<FVector2D>
---@field OutSwayPosition FVector
---@field OutSwayRotation FRotator
---@field CurrentSpringOffset FVector2D
---@field CurrentSpringVelocity FVector2D
---@field TargetSpringOffset FVector2D
---@field TargetSpringVelocity FVector2D
---@field CurMovePosition FVector
---@field CurMoveRotation FRotator
---@field CurScopeMovePosition FVector
---@field CurScopeMoveRotation FRotator
---@field b_UseModuleWeaponSwayAlpha boolean
---@field b_ActiveWeaponSway boolean
---@field f_WeaponSwayAlpha number
---@field f_WeaponSwayAlphaSpeed number
---@field f_WeaponSwayCurrentTime number
---@field f_WeaponSwayCurveEndTime number
---@field SightSlowBlendAlpha FVector2D
---@field v_WeaponSwayForwardOffset FVector
---@field v_FinalWeaponSwayLocationOffset FVector
---@field r_FinalWeaponSwayRotatorOffset FRotator
---@field m_WeaponWalkSwayAlphaScopeMap ULuaMapHelper<number, number>
---@field m_WeaponWalkSwayAlphaWeaponMap ULuaMapHelper<number, number>
---@field ExternalWeaponSwayAlpha number
---@field f_ExternalWeaponSwayCurrentTime number
---@field f_ExternalWeaponSwayCurveEndTime number
---@field ScopeAlpha number
---@field SightScaleRatio number
---@field SwayCenterOffset FVector
---@field ScopeSwayCenterOffset FVector
local UNewFPPAnimFMObj_WeaponSway = {}

---设置外部枪摆参数
---@param InCurve UCurveVector
function UNewFPPAnimFMObj_WeaponSway:SetExternalWeaponSwayCurve(InCurve) end

---@param InAlpha number
function UNewFPPAnimFMObj_WeaponSway:SetExternalWeaponSwayAlpha(InAlpha) end

---重置外部枪摆参数，清除已设置的曲线和Alpha值
function UNewFPPAnimFMObj_WeaponSway:ResetExternalWeaponSway() end

---@param EventMsg string
function UNewFPPAnimFMObj_WeaponSway:HandleOwnerAnimEvent(EventMsg) end

---@param WeaponSlotID number
---@param IsEquipped boolean
function UNewFPPAnimFMObj_WeaponSway:OnWeaponPartsEquipped(WeaponSlotID, IsEquipped) end

---@param type number
---@param IsOnlyTurn boolean
---@param InstanceID number
function UNewFPPAnimFMObj_WeaponSway:HandleSwitchSightAngled(type, IsOnlyTurn, InstanceID) end
