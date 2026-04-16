---@meta

---@class FOnFlyingStartChange : ULuaMulticastDelegate
FOnFlyingStartChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsStartFlying: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFlyingStartChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsStartFlying boolean
function FOnFlyingStartChange:Broadcast(bIsStartFlying) end


---@class UHomeFlyingComponent: UActorComponent, IObjectPoolInterface
---@field FlyingStart boolean
---@field OnFlyingStartChange FOnFlyingStartChange
local UHomeFlyingComponent = {}

function UHomeFlyingComponent:EnterFlyingMode() end

function UHomeFlyingComponent:ExitFlyingMode() end

---@param bAdd boolean
---@param nUp number
function UHomeFlyingComponent:PlayerAddForce(bAdd, nUp) end

---@param bEnter boolean
function UHomeFlyingComponent:EnterFlyingModeDS(bEnter) end

function UHomeFlyingComponent:RPC_SyncFlyingState() end

---@param bEnter boolean
function UHomeFlyingComponent:ClientOnFlyingStart(bEnter) end
