---@meta

---@class FFinishPickedUpEvent : ULuaSingleDelegate
FFinishPickedUpEvent = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFinishPickedUpEvent:Bind(Callback, Obj) end

---执行委托
function FFinishPickedUpEvent:Execute() end


---用于各种模式的通用拾取升级
---@class ARecyclablePickupItem: AUAERegionActor
---@field bPicked boolean
---@field AnimationTime number
---@field DefaultObjectPoolSize number
---@field DefaultObjectPoolCleanupTime number
---@field OnFinishPickedUp FFinishPickedUpEvent
local ARecyclablePickupItem = {}

function ARecyclablePickupItem:FinishPickedUp() end

function ARecyclablePickupItem:OnRep_Picked() end

function ARecyclablePickupItem:DestoryRecyclePickupActor() end

function ARecyclablePickupItem:OnReceiveItemEnd() end

function ARecyclablePickupItem:OnReceiveItemBegin() end

function ARecyclablePickupItem:OnItemPicked() end
