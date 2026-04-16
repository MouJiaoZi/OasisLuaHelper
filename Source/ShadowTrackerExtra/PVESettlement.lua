---@meta

---@class FPVESettlementFinishDelegate : ULuaMulticastDelegate
FPVESettlementFinishDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVESettlementFinishDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FPVESettlementFinishDelegate:Broadcast(InstanceID) end


---@class UPVESettlement: UPVEBaseTask
---@field OnSettlementFinish FPVESettlementFinishDelegate
local UPVESettlement = {}

---@param InstanceId number
---@param IsFinish boolean
function UPVESettlement:ExecuteWithFinish(InstanceId, IsFinish) end

---@param InstanceId number
---@param IsFinish boolean
---@return boolean
function UPVESettlement:LuaExecuteWithFinish(InstanceId, IsFinish) end

function UPVESettlement:OnFinish() end
