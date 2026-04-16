---@meta

---@class FMonsterPlan
FMonsterPlan = {}


---@class FOnMonsterDie_MonsterTreasureBoxGroup : ULuaMulticastDelegate
FOnMonsterDie_MonsterTreasureBoxGroup = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MonsterTreasureBoxGroupName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMonsterDie_MonsterTreasureBoxGroup:Add(Callback, Obj) end

---触发 Lua 广播
---@param MonsterTreasureBoxGroupName string
function FOnMonsterDie_MonsterTreasureBoxGroup:Broadcast(MonsterTreasureBoxGroupName) end


---@class FOnMonsterTreasureBoxActive : ULuaMulticastDelegate
FOnMonsterTreasureBoxActive = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MonsterTreasureBoxGroupName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMonsterTreasureBoxActive:Add(Callback, Obj) end

---触发 Lua 广播
---@param MonsterTreasureBoxGroupName string
function FOnMonsterTreasureBoxActive:Broadcast(MonsterTreasureBoxGroupName) end


---@class FOnMonsterTreasureBoxBreak : ULuaMulticastDelegate
FOnMonsterTreasureBoxBreak = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MonsterTreasureBoxGroupName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMonsterTreasureBoxBreak:Add(Callback, Obj) end

---触发 Lua 广播
---@param MonsterTreasureBoxGroupName string
function FOnMonsterTreasureBoxBreak:Broadcast(MonsterTreasureBoxGroupName) end


---@class UMonsterTreasureBoxGroupComponent: UGroupSpotSceneComponent
---@field WeightValue number
---@field OnMonsterDie_MonsterTreasureBoxGroup FOnMonsterDie_MonsterTreasureBoxGroup
---@field OnMonsterTreasureBoxActive FOnMonsterTreasureBoxActive
---@field OnMonsterTreasureBoxBreak FOnMonsterTreasureBoxBreak
---@field CurLiveMonsterNum number
---@field CurrentMonsterSpotSceneComponent ULuaArrayHelper<UMonsterSpotSceneComponent>
---@field LastSpawnTime number
---@field IsStartGenerateMosnters boolean
---@field CurMonsterRefeshPlanID number
---@field MaxLiveMonsterNum number
local UMonsterTreasureBoxGroupComponent = {}

function UMonsterTreasureBoxGroupComponent:GeneratorTreasureBox() end

---@param MonsterTreasureBoxGroupName string
function UMonsterTreasureBoxGroupComponent:GeneratorMonsters(MonsterTreasureBoxGroupName) end

---@param MonsterSpotSceneComponent UMonsterSpotSceneComponent
function UMonsterTreasureBoxGroupComponent:RegisterMonsterSpotSceneComponent(MonsterSpotSceneComponent) end

---@return boolean
function UMonsterTreasureBoxGroupComponent:CanGeneratorTreaseurBox() end

---@param MonsterName string
function UMonsterTreasureBoxGroupComponent:MonsterDie_MonsterTreasureBoxGroup(MonsterName) end

---@param MonsterTreasureBoxName string
function UMonsterTreasureBoxGroupComponent:MonsterTreasureBoxActive(MonsterTreasureBoxName) end

---@param MonsterTreasureBoxName string
function UMonsterTreasureBoxGroupComponent:MonsterTreasureBoxBreak(MonsterTreasureBoxName) end

---@param state EMonsterTreasureBoxState
function UMonsterTreasureBoxGroupComponent:MonsterTreasureBoxStateChanged(state) end

function UMonsterTreasureBoxGroupComponent:Reset() end

---@param DeltaTime number
function UMonsterTreasureBoxGroupComponent:Update(DeltaTime) end

---@return number
function UMonsterTreasureBoxGroupComponent:GetMonsterID() end
