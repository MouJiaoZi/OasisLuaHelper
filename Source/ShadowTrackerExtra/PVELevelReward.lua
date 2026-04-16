---@meta

---@class FPVELevelRewardFinishDelegate : ULuaMulticastDelegate
FPVELevelRewardFinishDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPVELevelRewardFinishDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InstanceID number
function FPVELevelRewardFinishDelegate:Broadcast(InstanceID) end


---副本关卡中关底奖励基类
---@class UPVELevelReward: UPVEBaseTask
---@field OnLevelRewardFinish FPVELevelRewardFinishDelegate
local UPVELevelReward = {}

function UPVELevelReward:OnFinish() end
