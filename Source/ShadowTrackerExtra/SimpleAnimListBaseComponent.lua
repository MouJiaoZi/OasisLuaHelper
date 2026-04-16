---@meta

---@class FAnimDataPair
---@field PoseTypeID number
---@field AnimSoftPtr UAnimationAsset
FAnimDataPair = {}


---@class FAsyncLoadAnimParams
FAsyncLoadAnimParams = {}


---@class FOnAsyncLoadingFinished : ULuaMulticastDelegate
FOnAsyncLoadingFinished = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AsyncLoadAnimParams: FAsyncLoadAnimParams) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAsyncLoadingFinished:Add(Callback, Obj) end

---触发 Lua 广播
---@param AsyncLoadAnimParams FAsyncLoadAnimParams
function FOnAsyncLoadingFinished:Broadcast(AsyncLoadAnimParams) end


---@class USimpleAnimListBaseComponent: UUAEAnimListComponentBase
---@field AnimDataPairs ULuaArrayHelper<FAnimDataPair>
---@field moveAnimSpeed ULuaMapHelper<number, number>
---@field PlayMoveDeathMinimumDist number
---@field OnAnimLoadedFinished FOnAsyncLoadingFinished
local USimpleAnimListBaseComponent = {}

---@param ChildComponent UUAEAnimListComponentBase
---@param Layer number
function USimpleAnimListBaseComponent:AddChildComponent(ChildComponent, Layer) end

---@param ChildComponent UUAEAnimListComponentBase
function USimpleAnimListBaseComponent:RemoveChildComponent(ChildComponent) end

---@param loadAnimParams FAsyncLoadAnimParams
function USimpleAnimListBaseComponent:OnAsyncLoadingFinished(loadAnimParams) end

function USimpleAnimListBaseComponent:SortAnimations() end
