---@meta

---@class EMarkParentWidget
---@field EMPW_None number
---@field EMPW_MiniMap number
---@field EMPW_EntireMap number
EMarkParentWidget = {}


---@class FMapMarkSwitchConfig
---@field ModeUIStrArray ULuaArrayHelper<string>
---@field ItemDescription string
---@field ItemDtlDesc string
---@field MarkImageForItem FStringAssetReference
---@field bCreatedAccordingToMark boolean
---@field MarkSourceID number
---@field CategoryID number
FMapMarkSwitchConfig = {}


---@class FMapMarkLoacationRotation
---@field Location FVector
---@field Rotation FRotator
---@field bChangeAfterInit boolean
FMapMarkLoacationRotation = {}


---@class UMapUIMarkBaseWidget: UUAEUserWidget
---@field MapScaleCreated number
---@field bIsConsiderMapMarkSwitch boolean
---@field MapMarkSwitchConfig FMapMarkSwitchConfig
---@field bLimitedInMinimap boolean
---@field bLimitedWithMapCenter boolean
---@field bDynamicPos boolean
---@field isUpdateScale boolean
---@field bDoCallFunctionWhenEnterEntireMap boolean
---@field bDoUsSelfZOrder boolean
---@field MarkZOrder number
---@field LimitedSize FVector2D
---@field bRotateWidgetToAngle boolean
---@field bNeedCalculateWorldPosEx boolean
---@field AttachedMap EMarkParentWidget
---@field bIsStateChangeMark boolean
local UMapUIMarkBaseWidget = {}

---@param InState FCustomMarkEventData
function UMapUIMarkBaseWidget:UpdateUIBPState(InState) end

---@param InState FCustomMarkEventData
---@param ParentState EMarkParentWidget
---@param inRealLevelToMapScale number
---@param inMapScale number
function UMapUIMarkBaseWidget:OnUIBPCreate(InState, ParentState, inRealLevelToMapScale, inMapScale) end

---@param InState FCustomMarkEventData
function UMapUIMarkBaseWidget:OnUIBPShow(InState) end

function UMapUIMarkBaseWidget:OnUIBPDestroy() end

---@param NewMapPos FVector2D
---@param MapAdjustOffset FVector2D
---@param Angle number
---@param MapWindowHalfExtent number
function UMapUIMarkBaseWidget:UpdateMarkPosition(NewMapPos, MapAdjustOffset, Angle, MapWindowHalfExtent) end

---@param inScale number
---@param inMapScale number
---@param MapScaleInUI number
function UMapUIMarkBaseWidget:UpdateMarkSize(inScale, inMapScale, MapScaleInUI) end

function UMapUIMarkBaseWidget:OnEnterEntireMap() end

---@param InOutScreen boolean
function UMapUIMarkBaseWidget:OnUpdateOutScreen(InOutScreen) end

---@param InOutScreen boolean
---@param Dist FVector2D
function UMapUIMarkBaseWidget:OnUpdateOutScreenDistance(InOutScreen, Dist) end

---@param Angle number
function UMapUIMarkBaseWidget:UpdateMarkRotation(Angle) end

---@param pMarkManager UMapUIMarkManager
function UMapUIMarkBaseWidget:SetUIBPVisibility(pMarkManager) end

function UMapUIMarkBaseWidget:OnVisibilityChangedByMarkSwitch() end

---@param WorldPos3D FVector
function UMapUIMarkBaseWidget:SetWidgetCurPostion(WorldPos3D) end

---@param WorldRot3D FRotator
function UMapUIMarkBaseWidget:SetWidgetCurRotation(WorldRot3D) end

---@return FVector
function UMapUIMarkBaseWidget:GetWidgetCurWorldPos() end

---@return FVector
function UMapUIMarkBaseWidget:GetWidgetCurWorldPosEx() end

---@return FRotator
function UMapUIMarkBaseWidget:GetWidgetCurWorldRot() end


---@class UMapUIMarkFixedPathWidget: UMapUIMarkBaseWidget
---@field AdjustScale number
---@field LeftBottomWorldStart FVector
---@field RightTopWorldEnd FVector
---@field MapMarkLoacationRotation ULuaArrayHelper<FMapMarkLoacationRotation>
local UMapUIMarkFixedPathWidget = {}

---@param DeltaTime number
function UMapUIMarkFixedPathWidget:ReceiveTickMarkWidget(DeltaTime) end
