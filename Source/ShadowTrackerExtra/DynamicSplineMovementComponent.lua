---@meta

---@class ESplineRouteType
---@field None number
---@field Straight number
---@field Circle number
ESplineRouteType = {}


---@class FDynamicSplineRouteSyncData
---@field RouteType ESplineRouteType
---@field StartPos FVector
---@field EndPos FVector
---@field bClock boolean
FDynamicSplineRouteSyncData = {}


---@class FOnSplineRouteUpdate : ULuaSingleDelegate
FOnSplineRouteUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSplineRouteUpdate:Bind(Callback, Obj) end

---执行委托
function FOnSplineRouteUpdate:Execute() end


---@class FOnArrivingInvalidLocation : ULuaSingleDelegate
FOnArrivingInvalidLocation = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnArrivingInvalidLocation:Bind(Callback, Obj) end

---执行委托
function FOnArrivingInvalidLocation:Execute() end


---@class FOnTickBefore : ULuaMulticastDelegate
FOnTickBefore = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTickBefore:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaTime number
function FOnTickBefore:Broadcast(DeltaTime) end


---和splinemovement一样沿着轨迹运行，但是可以动态调整轨迹，同步调整后的关键信息，根据信息画路径(目前仅支持同一平面上的圆和直线)
---@class UDynamicSplineMovementComponent: USplineMovementComponent
---@field StraightLength number
---@field StrightUpdatePer number
---@field BottomLeftLocation FVector
---@field TopRightLocation FVector
---@field OnArrivingInvalidLocation FOnArrivingInvalidLocation
---@field OnTickBefore FOnTickBefore
---@field SyncData FDynamicSplineRouteSyncData
---@field OnSplineRouteUpdate FOnSplineRouteUpdate
---@field SpeedRate number
---@field ClientTickInterval number
local UDynamicSplineMovementComponent = {}

---@param InRotateDegree number
function UDynamicSplineMovementComponent:MakeNewRoute(InRotateDegree) end

---@param InRouteType ESplineRouteType
---@param InStartPos FVector
---@param InEndPos FVector
---@param InbClock boolean
function UDynamicSplineMovementComponent:SetSyncData(InRouteType, InStartPos, InEndPos, InbClock) end

---@param TagName string
function UDynamicSplineMovementComponent:SetRouteSplineActorTag(TagName) end

function UDynamicSplineMovementComponent:RefreshRoute() end

function UDynamicSplineMovementComponent:OnRep_SyncData() end
