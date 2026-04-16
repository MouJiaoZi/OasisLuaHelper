---@meta

---@class ENativeEventSwitch
---@field Event_CloseAll number
---@field Event_OpenAll number
---@field Event_Auto number
---@field Event_InitParam number
---@field Event_InitParamEnd number
---@field Event_SetExParam number
---@field Event_UnInitParam number
---@field Event_TickWidgetBegin number
---@field Event_TickWidgetEnd number
---@field Event_UpdateTargetPos number
---@field Event_CalculationVisable number
---@field Event_UpdateVisibility number
---@field Event_UpdateDistance number
---@field Event_FreshPosition number
---@field Event_FreshTargetActor number
---@field Event_UpdateWidgetVisible number
---@field Event_UpdateOutScreen number
---@field Event_CrossDistanceThreshold number
---@field Event_Max number
ENativeEventSwitch = {}


---@class FWidgetParamInfo
---@field BNeedShowArrow boolean
---@field BOutScreenHide boolean
---@field BBeOcclusionHide boolean
---@field BBeOcclusionResult boolean
---@field BBeOcclusionUseCamera boolean
---@field BUseViewTargetLocation boolean
---@field BDistanceUse3D boolean
---@field OcclusionTraceMobilityType number
---@field OcclusionCollisionChannel ULuaArrayHelper<ECollisionChannel>
---@field OcclusionIgnoreTag string
---@field IsNotIgnoreCurPawn boolean
---@field MaxShowDistance number
---@field IgnoreScaleVal number
---@field MinScaleDistance number
---@field MaxScaleDistance number
---@field LerpFromScale number
---@field LerpToScale number
---@field IgnoreAlphaVal number
---@field MinAlphaDistance number
---@field MaxAlphaDistance number
---@field LerpFromAlpha number
---@field LerpToAlpha number
---@field IgnoreOffsetScaleVal number
---@field MinOffsetScaleDistance number
---@field MaxOffsetScaleDistance number
---@field LerpFromOffsetScale number
---@field LerpToOffsetScale number
---@field BUseCenterExtendLimit boolean
---@field BUsePercentLimit boolean
---@field Limit FVector4
---@field bUseCustomPCLimit boolean
---@field Limit_PC FVector4
---@field PCCornerRadius number
---@field UIOffset FVector2D
---@field LocOffset FVector
---@field CheckGameModeState string
---@field IconShowTime number
---@field CheckTargetActorInCenter boolean
---@field CheckTargetActorBeyondDis number
---@field CheckTargetActorInCenterTraceMobilityType number
---@field BHideInCharacterGunADS boolean
---@field bGetTargetPosByInterface boolean
FWidgetParamInfo = {}


---@class FObjectPositionFreshParamDelegate : ULuaSingleDelegate
FObjectPositionFreshParamDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FObjectPositionFreshParamDelegate:Bind(Callback, Obj) end

---执行委托
function FObjectPositionFreshParamDelegate:Execute() end


---@class FTargetActorInSightChangedDelegate : ULuaMulticastDelegate
FTargetActorInSightChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewIsTargetActorInCenter: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTargetActorInSightChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewIsTargetActorInCenter boolean
function FTargetActorInSightChangedDelegate:Broadcast(NewIsTargetActorInCenter) end


---@class IObjectPositionWidgetTargetInterface: IInterface
IObjectPositionWidgetTargetInterface = {}

---@return FVector
function IObjectPositionWidgetTargetInterface:GetCustomTargetPosition() end


---@class UObjectPositionWidget: UUAEUserWidget
---@field EventSwitch ENativeEventSwitch
---@field EventSwitchValue number
---@field bEnableFixLerpFeature boolean
---@field FixLerpFeatureSpeed number
---@field bUseConstantLerp boolean
---@field CurrentLerpPosition FVector2D
---@field bFixLerpDone boolean
---@field FixLerpFeatureTolerance number
---@field bIsTargetActorInCenter boolean
---@field bIsBeyondContiousShowDis boolean
---@field OnTargetActorInSightChanged FTargetActorInSightChangedDelegate
---@field CheckGameModeStateValid boolean
---@field IsSelf boolean
---@field IsTeammate boolean
---@field IsOutScreen boolean
---@field OutScreenAngle number
---@field IsLerpAlphaByDistanceToCenter boolean
---@field NormalPanelVisible boolean
---@field ArrowPanelVisible boolean
---@field WidgetVisible boolean
---@field IsWidgetNotCulled boolean
---@field IsWidgetNotFullyCovered boolean
---@field DistanceForText number
---@field DistanceToPlayer number
---@field ExParam number
---@field ShowRemainingTime number
---@field ObjectLoction FVector
---@field ParamInfo FWidgetParamInfo
---@field DrawInteractionResult boolean
---@field InteractionResult boolean
---@field InteractionDuraction number
---@field DistanceWeight number
---@field DistanceThreshold number
---@field DistanceTolerance number
---@field bLastOutDistanceThreshold boolean
---@field bEnableAdaptiveZOrder boolean
local UObjectPositionWidget = {}

function UObjectPositionWidget:UpdateEventSwitchValue() end

---@return boolean
function UObjectPositionWidget:IsPlayerDead() end

---检测UI拥有的目标Actor是否在视野内
---@return boolean
function UObjectPositionWidget:IsTargetActorInSight() end

function UObjectPositionWidget:UpdateDistPanelSlotPosition() end

---@param InParam FWidgetParamInfo
---@param InDestinPos FVector
---@param InTargetActor AActor
function UObjectPositionWidget:Event_InitParam(InParam, InDestinPos, InTargetActor) end

function UObjectPositionWidget:Event_InitParamEnd() end

---@param InParam number
function UObjectPositionWidget:Event_SetExParam(InParam) end

function UObjectPositionWidget:Event_UnInitParam() end

---@param InDeltaTime number
function UObjectPositionWidget:Event_TickWidgetBegin(InDeltaTime) end

---@param InDeltaTime number
function UObjectPositionWidget:Event_TickWidgetEnd(InDeltaTime) end

function UObjectPositionWidget:Event_UpdateTargetPos() end

---@param Loc FVector
---@return boolean
function UObjectPositionWidget:Event_CalculationVisable(Loc) end

---@param Loc FVector
---@return boolean
function UObjectPositionWidget:Event_PostCalculationVisable(Loc) end

---@param Loc FVector
function UObjectPositionWidget:Event_UpdateVisibility(Loc) end

---@param InDistance number
function UObjectPositionWidget:Event_UpdateDistance(InDistance) end

function UObjectPositionWidget:Event_FreshPosition() end

function UObjectPositionWidget:Event_FreshTargetActor() end

function UObjectPositionWidget:Event_UpdateWidgetVisible() end

---@param InIsOutScreen boolean
function UObjectPositionWidget:Event_UpdateOutScreen(InIsOutScreen) end

function UObjectPositionWidget:FreshStateVisibility() end

---@param InScreenPanel UWidget
---@param OutScreenPanel UWidget
---@param InArrowWidget UWidget
---@param InDistanPanel UWidget
---@param InDistanText UTextBlock
function UObjectPositionWidget:SetStateWidgetPanel(InScreenPanel, OutScreenPanel, InArrowWidget, InDistanPanel, InDistanText) end

---@param InRecycledActor AActor
---@param bPersistentPool boolean
function UObjectPositionWidget:OnActorRecycled(InRecycledActor, bPersistentPool) end

function UObjectPositionWidget:UpdateAlphaAndScaleControlValue() end

---@param StartPos FVector2D
function UObjectPositionWidget:SetFixStartLerpPosition(StartPos) end

function UObjectPositionWidget:OnFixLerpDone() end

function UObjectPositionWidget:UpdateDistanceToPlayer() end

---@param bOut boolean
function UObjectPositionWidget:Event_CrossDistanceThreshold(bOut) end
