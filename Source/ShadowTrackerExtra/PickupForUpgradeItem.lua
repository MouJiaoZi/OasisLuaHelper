---@meta

---@class FPickUpHide : ULuaMulticastDelegate
FPickUpHide = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InRefreshTimeStamp: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPickUpHide:Add(Callback, Obj) end

---触发 Lua 广播
---@param InRefreshTimeStamp number
function FPickUpHide:Broadcast(InRefreshTimeStamp) end


---@class FPickUpShow : ULuaSingleDelegate
FPickUpShow = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPickUpShow:Bind(Callback, Obj) end

---执行委托
function FPickUpShow:Execute() end


---ڸģʽͨʰȡ
---@class APickupForUpgradeItem: AUAERegionActor, IManagedActorInterface
---@field bPicked boolean
---@field PedestalClassPath string
---@field TrainingModePickUpColdCD number
local APickupForUpgradeItem = {}

function APickupForUpgradeItem:OnReceiveRespawned() end

function APickupForUpgradeItem:OnReceiveRecycled() end

function APickupForUpgradeItem:ShowActor() end

function APickupForUpgradeItem:FinishPickedUp() end

function APickupForUpgradeItem:RPC_Broadcast_NotifyAllClientsHideActorForSomeTime() end
