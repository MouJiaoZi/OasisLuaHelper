---@meta

---@class FLevelInstanceSyncActive : ULuaMulticastDelegate
FLevelInstanceSyncActive = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LevelInfo: FLevelInstanceInfo) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLevelInstanceSyncActive:Add(Callback, Obj) end

---触发 Lua 广播
---@param LevelInfo FLevelInstanceInfo
function FLevelInstanceSyncActive:Broadcast(LevelInfo) end


---@class ULevelInstanceSyncComponent: UActorComponent
---@field OnLevelInstanceSyncActive FLevelInstanceSyncActive
---@field ActiveInstanceLevelInfos ULuaArrayHelper<FLevelInstanceInfo>
---@field ClientActiveInstanceLevelInfos ULuaArrayHelper<FLevelInstanceInfo>
local ULevelInstanceSyncComponent = {}

function ULevelInstanceSyncComponent:UpdateActiveInstanceLevels() end

---@param InSyncInfo FLevelInstanceInfo
---@param bActive boolean
function ULevelInstanceSyncComponent:SyncLevelInstance(InSyncInfo, bActive) end

---@param InSyncInfos ULuaArrayHelper<FLevelInstanceInfo>
---@param bActive boolean
function ULevelInstanceSyncComponent:SyncLevelInstances(InSyncInfos, bActive) end

function ULevelInstanceSyncComponent:OnRep_ActiveInstanceLevelInfos() end
