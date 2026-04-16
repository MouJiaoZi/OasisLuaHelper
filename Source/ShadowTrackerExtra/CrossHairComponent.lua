---@meta

---@class ECrossHairSpreadType
---@field ECHST_Offset number
---@field ECHST_Scale number
---@field ECHST_Damage number
---@field ECHST_Rotate number
ECrossHairSpreadType = {}


---@class EModifyHideCrossHairState
---@field EModifyHideCrossHairState_None number
---@field EModifyHideCrossHairState_Inspect_Hide number
---@field EModifyHideCrossHairState_Inspect_Show number
---@field EModifyHideCrossHairState_Sight_Hide number
---@field EModifyHideCrossHairState_Sight_NewFPP_Show number
---@field EModifyHideCrossHairState_Sight_NewTPP_Show number
EModifyHideCrossHairState = {}


---@class EFireResetType
---@field EFireResetType_None number
---@field EFireResetType_Single number
---@field EFireResetType_Loop number
---@field EFireResetType_SingleAndLoop number
EFireResetType = {}


---@class FDrawBoxItemData
FDrawBoxItemData = {}


---@class FDrawCircleItemData
FDrawCircleItemData = {}


---@class FWeaponCrossHairPerformData
---@field Crosshair ULuaArrayHelper<FWeaponCrossHairIconData> @crosshair parts icons (left, top, right, bottom and center)
---@field SpreadType ECrossHairSpreadType
---@field bEnableOutline boolean
FWeaponCrossHairPerformData = {}


---@class FWeaponCrossHairHitPerformData
---@field DefaultShowHitTime number
---@field DamageRangeMin number
---@field DamageRangeMax number
---@field DamageScaleSpreadMin number
---@field DamageScaleSpreadMax number
---@field CurDamageScaleMin number
---@field CurDamageScaleMax number
---@field CurDamageScaleDecreaseSpeed number
---@field ShowHitCrosshairLeftTime number
---@field CurDamageScale number
FWeaponCrossHairHitPerformData = {}


---@class FWeaponFireResetData
---@field ResetType EFireResetType
---@field ResetTime number
FWeaponFireResetData = {}


---@class UCrossHairComponent: UWeaponLogicBaseComponent
---@field CrossHairData ULuaArrayHelper<FWeaponCrossHairPerformData>
---@field LerpAlpha number
---@field WeaknessCrossHairData ULuaArrayHelper<FWeaponCrossHairPerformData>
---@field NeedWeakness boolean
---@field WeaknessTime number
---@field WeaknessRateTime number
---@field IsWeakness boolean
---@field PistolCenterDownDis number
---@field bDrawDebugCrossHairCircleArea boolean
---@field DrawDebugCrossHairCircleAreaSteps number
---@field bDrawDebugSpreadCircleArea boolean
---@field DrawDebugSpreadCircleAreaSteps number
---@field RotateAngle number
---@field bEnableRotateAngle boolean
---@field bSkipPCTextureScale boolean
---@field bHasOverFunctionDrawWeaponCrosshairInner boolean
---@field bOverrideHitData boolean
---@field LastCheckTime number
---@field bNeedDrawHitPoint boolean
---@field bIsHighfrequency boolean
---@field CheckHitWorldPoint FVector
---@field CheckHitScreenPoint FVector2D
---@field HitUIIconData FWeaponHitUIIconData
---@field bEnablePreConfig boolean
---@field bSetConfig boolean
---@field ShowCrossHairState number
---@field UIName string
---@field bShowCustomCrossHair boolean
---@field bNeedNoShootIcon boolean
---@field SettingChangedListenerID number
---@field bShouldDrawWhenDyingUsing boolean
---@field InspectHideCrossHairInterval_In number
---@field InspectHideCrossHairInterval_Out number
---@field SightHideCrossHairInterval_Open number
---@field SightHideCrossHairInterval_Close number
---@field SightHideCrossHairTiming number
---@field BeginCheckScopeOutProgress boolean
---@field ModifyHideCrossHairState EModifyHideCrossHairState
---@field bEnableLerpAlpha boolean
---@field CurrentShootModeType EMultiFunctionalShootModeType
---@field bOverlapCrossHair boolean
local UCrossHairComponent = {}

---@param WeaponHudWidget UHUDWidgetBase
---@param DeltaTime number
function UCrossHairComponent:DrawWeaponCrosshairInner(WeaponHudWidget, DeltaTime) end

function UCrossHairComponent:UpdateComponentTick() end

function UCrossHairComponent:StartWeaknessCrossHair() end

---@return boolean
function UCrossHairComponent:CanWeaknessCross() end

function UCrossHairComponent:DrawDebugPointEnd() end

function UCrossHairComponent:DrawSpreadEnd() end

---@param WeaponHudWidget UHUDWidgetBase
---@param CurCrossHairData FWeaponCrossHairPerformData
function UCrossHairComponent:DrawCrosshairTexture(WeaponHudWidget, CurCrossHairData) end

---@return FWeaponCrossHairPerformData
function UCrossHairComponent:GetCrossHairData() end

---@param InHitUIIconData FWeaponHitUIIconData
function UCrossHairComponent:CheckShootHit(InHitUIIconData) end

---@param UI UWidget
function UCrossHairComponent:OnAsyncFinishShowUI(UI) end

function UCrossHairComponent:OnSettingChanged() end

function UCrossHairComponent:OnSaveCustomCrossHair() end

---@param Mode EPlayerCameraMode
function UCrossHairComponent:HandlePlayerSwitchCameraModeEvent(Mode) end

function UCrossHairComponent:HideCustomCrossHair() end

---@param Table UUAEDataTable
function UCrossHairComponent:OnTableLoaded(Table) end

---@return boolean
function UCrossHairComponent:ShouldHandleCustomCrossHair() end

---@return boolean
function UCrossHairComponent:CheckIsNeedNoShootIcon() end

---@param State FGameplayTag
function UCrossHairComponent:HandleDynamicStateEnter(State) end

---@param State FGameplayTag
function UCrossHairComponent:HandleDynamicStateLeave(State) end

---@param NewState EModifyHideCrossHairState
function UCrossHairComponent:BeginLerpInspectOpacity(NewState) end

---@param IsIn boolean
---@param IsEnd boolean
function UCrossHairComponent:HandleScopeOutEvent(IsIn, IsEnd) end

---@param Slot ESurviveWeaponPropSlot
function UCrossHairComponent:HandleWeaponChanged(Slot) end

function UCrossHairComponent:ForceRefreshDeviationFactorWithoutLerp() end
