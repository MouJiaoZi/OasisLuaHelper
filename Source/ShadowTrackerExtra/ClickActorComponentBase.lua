---@meta

---@class EClickOverlapCheckType
---@field ClickOverlapCheckType_Tick number @Tick
---@field ClickOverlapCheckType_Event number @Event
EClickOverlapCheckType = {}


---@class EClickActorExcuteSide
---@field EGIRS_CLIENT number
---@field EGIRS_DS number
---@field EGIRS_BOTH number
EClickActorExcuteSide = {}


---@class EClickUIInfoAnchorType
---@field Custom number @自定义
---@field DefaultPoint number @默认位置
---@field Down number @右下角
---@field Up number @右上角
---@field CheckIn number @打卡
---@field ScrollMiddle number @可滑动居中
EClickUIInfoAnchorType = {}


---@class FClick_PassInfo
---@field PassID number
---@field BeginTimeStamp number
---@field EndTimeStamp number
FClick_PassInfo = {}


---@class FClick_ValidInfo
---@field PassInfo FClick_PassInfo
FClick_ValidInfo = {}


---@class FClick_ValidInfo_Rep
---@field PassInfo ULuaArrayHelper<FClick_PassInfo>
FClick_ValidInfo_Rep = {}


---@class FClick_Param
---@field Message string
FClick_Param = {}


---@class FClick_CheckFunctionName
---@field CustomFunctionName string
FClick_CheckFunctionName = {}


---@class FClick_ExcuteFunctionName
---@field CustomFunctionName string
FClick_ExcuteFunctionName = {}


---@class FClickPreciseInfo
---@field VaildInfo FClick_ValidInfo
---@field SortOrder number
FClickPreciseInfo = {}


---@class FClickButtonChangeContext
---@field bIsChangeByPrecise boolean
---@field ButtonOrder number
---@field MaxShowButton number
FClickButtonChangeContext = {}


---@class FClickPreciseWrapper
---@field PreciseInfos ULuaArrayHelper<FClickPreciseInfo>
FClickPreciseWrapper = {}


---@class FClickPreciseContext
FClickPreciseContext = {}


---@class FClickUIInfo
---@field ButtonName string
---@field MountWidgetName string
---@field ClientCD number
---@field PressureTime number
---@field OuterClass UUAEUserWidget
---@field bAutoSize boolean
---@field ZOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
---@field SortOrder number @The order priority this widget is rendered in.  Higher values are rendered last (and so they will appear to be on top).
---@field AnchorData FAnchorData
---@field ButtonClass UClickButtonWidget
---@field UIOverrideClass UClickButtonWidget
---@field ExtraMessage string
---@field AnchorType EClickUIInfoAnchorType
---@field RenderOpacity number
---@field GlobalCDEndTimeStamp number
---@field GlobalCDBeginTimeStamp number
---@field BisPostEventAtPlayerLocation boolean
FClickUIInfo = {}


---@class FDynamicClickInfoData
---@field CheckFunctionName string
---@field ExcuteFunctionName string
---@field ButtonName string
---@field ButtonTexturePath FSoftObjectPath
---@field ButtonClassPath FSoftClassPath
---@field ExtraMessage string
---@field ID number
---@field GlobalCD number
---@field ButtonClass UClickButtonWidget
FDynamicClickInfoData = {}


---@class FClickInfo
---@field CheckFunction FClick_CheckFunctionName
---@field ExcuteFunction FClick_ExcuteFunctionName
---@field UIInfo FClickUIInfo
---@field ExtraMessage string
---@field GlobalCD number
---@field ID number
---@field TlogID number
---@field bIgnoreScopeInteractionGetBehavior boolean
---@field bAddDynamically boolean
FClickInfo = {}


---@class FDynamicClickInfo
---@field IncrementalID number
---@field ClickInfoDataArray ULuaArrayHelper<FDynamicClickInfoData>
FDynamicClickInfo = {}


---@class FOnClickButton : ULuaMulticastDelegate
FOnClickButton = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Info: FClick_ValidInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClickButton:Add(Callback, Obj) end

---触发 Lua 广播
---@param Info FClick_ValidInfo
function FOnClickButton:Broadcast(Info) end


---@class FOnPlayerOutDelegate : ULuaSingleDelegate
FOnPlayerOutDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerOutDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerOutDelegate:Execute() end


---@class FOnPlayerOutDSDelegate : ULuaSingleDelegate
FOnPlayerOutDSDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerOutDSDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerOutDSDelegate:Execute() end


---@class FOnPreciseInteractionEnterDelegate : ULuaMulticastDelegate
FOnPreciseInteractionEnterDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreciseInteractionEnterDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FOnPreciseInteractionEnterDelegate:Broadcast(PC) end


---@class FOnPreciseInteractionExitDelegate : ULuaMulticastDelegate
FOnPreciseInteractionExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: ASTExtraPlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreciseInteractionExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC ASTExtraPlayerController
function FOnPreciseInteractionExitDelegate:Broadcast(PC) end


---@class IClickActorPCInterface
IClickActorPCInterface = {}


---@class UClickButtonWidget: UUAEUserWidget
---@field OnClickButton FOnClickButton
---@field NotTriggerByInteract boolean
---@field bShowInPCVer boolean
---@field bShowInPrecise boolean
---@field PreciseSortWeight number
---@field VaildInfo FClick_ValidInfo
---@field WeakOwner AActor
---@field UIInfoLocal FClickUIInfo
local UClickButtonWidget = {}

---@param UIInfo FClickUIInfo
function UClickButtonWidget:Init_BP(UIInfo) end

function UClickButtonWidget:OnButtonRemove_BP() end

---@param GlobaBeginStamp number
---@param GlobalEndStamp number
function UClickButtonWidget:ResetEndTimeStamp(GlobaBeginStamp, GlobalEndStamp) end

function UClickButtonWidget:RefreshHiddenByPCConfig() end

---@param NewInteractionMode EPCInteractionMode
function UClickButtonWidget:OnSwitchPreciseInteraction(NewInteractionMode) end


---一个提供给按钮使用的组件，用于实现靠近显示按钮的逻辑
---@class UClickActorComponentBase: UActorComponent, IRegionObjectInterface, IObjectPoolInterface, IInteractorInterface
---@field CheckType EClickOverlapCheckType
---@field bStatic boolean
---@field bEnablePrecise boolean
---@field ClickTracePrimitiveComps ULuaArrayHelper<FPrimitiveComponentSelector>
---@field ClickButtonInfo ULuaArrayHelper<FClickInfo>
---@field DynamicClickInfo FDynamicClickInfo
---@field LastDynamicClickInfo FDynamicClickInfo
---@field OverlapCompoent FShapeComponentSelector
---@field TracePrimitiveComps ULuaArrayHelper<FPrimitiveComponentSelector>
---@field bCheckInteractionPrimitive boolean
---@field CustomInteractionUIClassPath string
---@field bForceClient boolean
---@field PC_ClickInterval number
---@field OnPlayerOutDelegate FOnPlayerOutDelegate
---@field OnPlayerOutDSDelegate FOnPlayerOutDSDelegate
---@field OnPreciseInteractionEnterDelegate FOnPreciseInteractionEnterDelegate
---@field OnPreciseInteractionExitDelegate FOnPreciseInteractionExitDelegate
---@field VaildPC ULuaArrayHelper<ASTExtraPlayerController>
---@field TraceCompoents ULuaArrayHelper<UPrimitiveComponent>
---@field ClickTraceCompoents ULuaArrayHelper<UPrimitiveComponent>
---@field LocalValidInfo ULuaArrayHelper<FClick_ValidInfo>
---@field Widgets ULuaArrayHelper<UClickButtonWidget>
---@field DelayMountWidgets ULuaArrayHelper<FClick_ValidInfo>
---@field ExtraConsiderPC ULuaArrayHelper<ASTExtraPlayerController>
---@field ButtonCreateTime number
local UClickActorComponentBase = {}

---@param PC ASTExtraPlayerController
function UClickActorComponentBase:AddExtraPC(PC) end

---@param PC ASTExtraPlayerController
function UClickActorComponentBase:RemoveExtraPC(PC) end

---@param IndexID number
---@param GlobalCD number
function UClickActorComponentBase:SetButtonGlobalCD(IndexID, GlobalCD) end

---生效范围：S
---激活组件功能
function UClickActorComponentBase:HandleEnable() end

---生效范围：S
---停止组件功能
function UClickActorComponentBase:HandleDisable() end

---@param index number
---@param UIClass UClickButtonWidget
function UClickActorComponentBase:ClientOverrideUIClass(index, UIClass) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UClickActorComponentBase:OnBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UClickActorComponentBase:OnEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param InDynamicClickInfo ULuaArrayHelper<FDynamicClickInfoData>
function UClickActorComponentBase:SetClickButtonInfoDynamically(InDynamicClickInfo) end

function UClickActorComponentBase:OnRep_DynamicClickInfo() end

---@param Info FClick_ValidInfo
function UClickActorComponentBase:OnButtonClick(Info) end

function UClickActorComponentBase:DelayCheckButton() end

function UClickActorComponentBase:OnAsyncLoadDynamicClickButtonAssetsComplete() end

function UClickActorComponentBase:ManualUpdate() end

---@param Context FClickPreciseContext
---@return FClickPreciseWrapper
function UClickActorComponentBase:GetClickPreciseWrapper(Context) end

---@param Context FClickPreciseContext
---@return boolean
function UClickActorComponentBase:CheckPrecisePrimitive(Context) end
