---@meta

---@class EAreaOverlapCheckState
---@field AreaOverlapCheckState_Checking number @正在检测
---@field AreaOverlapCheckState_NotChecked number @关闭检测
EAreaOverlapCheckState = {}


---@class EAreaOverlapCheckType
---@field AreaOverlapCheckType_Tick number @Tick
---@field AreaOverlapCheckType_Event number @Event
EAreaOverlapCheckType = {}


---@class EOverlapCheckSide
---@field OverlapCheckSide_OnlyClient number @仅客户端
---@field OverlapCheckSide_OnlyServer number @仅服务器
---@field OverlapCheckSide_BothSide number @两端检测
EOverlapCheckSide = {}


---@class ECheckAreaCompStartCheckMethodInEventMode
---@field NoCall number @不主动检测
---@field CallOverlapInCheckAreaCompoment number @调用CheckOverArea自己的检测
---@field CallOverlapInPrimitiveComponent number @调用PrimitiveComponent的检测(推荐)
ECheckAreaCompStartCheckMethodInEventMode = {}


---@class FOverlapActorArray
---@field OverlapActorList ULuaArrayHelper<AActor>
FOverlapActorArray = {}


---@class FOverlapCheckActorArray
---@field InActorList ULuaArrayHelper<AActor>
---@field OutActorList ULuaArrayHelper<AActor>
FOverlapCheckActorArray = {}


---@class FOverlapReportInfo
---@field ReportName string
---@field Count number
FOverlapReportInfo = {}


---@class FOnChangeCheckState : ULuaMulticastDelegate
FOnChangeCheckState = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NowCheckState: EAreaOverlapCheckState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChangeCheckState:Add(Callback, Obj) end

---触发 Lua 广播
---@param NowCheckState EAreaOverlapCheckState
function FOnChangeCheckState:Broadcast(NowCheckState) end


---@class FOnOverlapCheck : ULuaMulticastDelegate
FOnOverlapCheck = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CheckActorArray: FOverlapActorArray) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOverlapCheck:Add(Callback, Obj) end

---触发 Lua 广播
---@param CheckActorArray FOverlapActorArray
function FOnOverlapCheck:Broadcast(CheckActorArray) end


---@class FOnOverlapCheckChange : ULuaMulticastDelegate
FOnOverlapCheckChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CheckActorArray: FOverlapCheckActorArray) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOverlapCheckChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param CheckActorArray FOverlapCheckActorArray
function FOnOverlapCheckChange:Broadcast(CheckActorArray) end


---区域重叠检测组件，能够检测到某个范围内开启重叠检测的Actor
---@class UOverlapCheckAreaComponent: UActorComponent, IRegionObjectInterface, IComponentHibernationNotifyInterface
---@field bAutoStartCheck boolean
---@field CheckType EAreaOverlapCheckType
---@field CheckSide EOverlapCheckSide
---@field ObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field ChannelTypes ULuaArrayHelper<ECollisionChannel>
---@field OverlapComponentSelector FActorComponentSelector
---@field OnOverlapCheckChange FOnOverlapCheckChange
---@field bNotifyOverlapActorPerCheck boolean
---@field bNotifyOverlapActorPerCheckWhenNoActor boolean
---@field OnOverlapCheck FOnOverlapCheck
---@field OnChangeCheckState FOnChangeCheckState
---@field CurrentCheckState EAreaOverlapCheckState
---@field bStopCheckWhenHibernation boolean
---@field bComponentHibernation boolean
---@field bCallingStatOrStopInHibernation boolean
---@field bLogicStartCheck boolean
---@field StartCheckMethodInEventMode ECheckAreaCompStartCheckMethodInEventMode
---@field CheckTime number
---@field bStatic boolean
---@field CacheActorList ULuaArrayHelper<AActor>
---@field IgnoreActorList ULuaArrayHelper<AActor>
---@field EventOverlapActors FOverlapActorArray
local UOverlapCheckAreaComponent = {}

---生效范围：S
---触发一次区域重叠检测
---@param DeltaTime number
function UOverlapCheckAreaComponent:CheckOverlapActor(DeltaTime) end

---生效范围：S
---开始检测
---@param InIgnoreActorList ULuaArrayHelper<AActor>
---@param bStopIfStarted boolean
function UOverlapCheckAreaComponent:StartCheck(InIgnoreActorList, bStopIfStarted) end

---生效范围：S
---停止检测
function UOverlapCheckAreaComponent:StopCheck() end

---@param OutActor ULuaArrayHelper<AActor>
function UOverlapCheckAreaComponent:GetCachedActor(OutActor) end

---@param InActor AActor
---@return boolean
function UOverlapCheckAreaComponent:IsInArea(InActor) end

---@param NewCheckType EAreaOverlapCheckType
---@param InIgnoreActorList ULuaArrayHelper<AActor>
function UOverlapCheckAreaComponent:SetCheckType(NewCheckType, InIgnoreActorList) end

---@return boolean
function UOverlapCheckAreaComponent:IsValidCheckSide() end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UOverlapCheckAreaComponent:HandlePlayerBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UOverlapCheckAreaComponent:HandlePlayerEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
