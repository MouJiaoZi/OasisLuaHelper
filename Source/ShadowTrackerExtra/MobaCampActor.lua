---@meta

---@class FMobaCampActorNotifyDelegate : ULuaMulticastDelegate
FMobaCampActorNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Sender: AMobaCampActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMobaCampActorNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Sender AMobaCampActor
function FMobaCampActorNotifyDelegate:Broadcast(Sender) end


---MobaCampActor
---@class AMobaCampActor: ACampActor
---@field EnemyHeroes ULuaArrayHelper<string>
---@field EnemyHeroesRepDelegate FMobaCampActorNotifyDelegate
---@field EnemyMinions ULuaArrayHelper<number>
---@field EnemyMinionsRepDelegate FMobaCampActorNotifyDelegate
---@field EnemyMonsters ULuaArrayHelper<number>
---@field EnemyMonstersRepDelegate FMobaCampActorNotifyDelegate
local AMobaCampActor = {}

function AMobaCampActor:OnRep_EnemyHeroes() end

function AMobaCampActor:OnRep_EnemyMinions() end

function AMobaCampActor:OnRep_EnemyMonsters() end

---@param InMobaVFComp UMobaVisualFieldComponent
---@param MobaVisualFieldFrame FMobaVisualFieldFrame
function AMobaCampActor:OnVisualFieldFrameMerged(InMobaVFComp, MobaVisualFieldFrame) end
