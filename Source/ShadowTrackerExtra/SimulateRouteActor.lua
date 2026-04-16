---@meta

---@class FRepRouteData
FRepRouteData = {}


---@class FSimulateRouteChanged : ULuaSingleDelegate
FSimulateRouteChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSimulateRouteChanged:Bind(Callback, Obj) end

---执行委托
function FSimulateRouteChanged:Execute() end


---@class ASimulateRouteActor: AMoveablePlatformBaseActor, IRegionObjectInterface
---@field RepRouteData any
---@field OnStopRouteDelegate FSimulateRouteChanged
---@field OnStartRouteDelegate FSimulateRouteChanged
---@field ServerRouteTimes number
---@field LocalRouteTimes number
---@field ServerClientMaxTimeDif number
---@field MarkType number
---@field MarkInWhichMap EAddMarkFlag
---@field bShouldSetRotation boolean
---@field UpdateInterval number
---@field ServerClientMinTimeDif number
---@field ClientSlowdownRate number
---@field ActionLogicTag string
local ASimulateRouteActor = {}

---@return boolean
function ASimulateRouteActor:GetIsMoving() end

function ASimulateRouteActor:ReceiveOnStopRoute() end

function ASimulateRouteActor:ReceiveOnStartRoute() end

function ASimulateRouteActor:ReceiveOnRouteConfirmed() end

function ASimulateRouteActor:OnRep_RouteData() end

---@param InRouteData FRepRouteData
function ASimulateRouteActor:StartRoute(InRouteData) end

---@return number
function ASimulateRouteActor:GetRouteVelocity() end

---@param InTagsList ULuaArrayHelper<string>
function ASimulateRouteActor:AddTagsToRouteActorAndComponents(InTagsList) end

function ASimulateRouteActor:OnRep_ServerRouteTimes() end
