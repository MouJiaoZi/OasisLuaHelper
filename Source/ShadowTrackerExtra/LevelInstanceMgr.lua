---@meta

---@class FLevelInstanceInfo
---@field LevelName string
---@field UniqueName string
---@field Trans FTransform
FLevelInstanceInfo = {}


---@class FOnLevelInstanceChanged : ULuaMulticastDelegate
FOnLevelInstanceChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Level: ULevel, World: UWorld) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLevelInstanceChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Level ULevel
---@param World UWorld
function FOnLevelInstanceChanged:Broadcast(Level, World) end


---@class ALevelInstanceMgr: AActor
---@field LevelInstanceAddedToWorld FOnLevelInstanceChanged
---@field LevelInstanceRemovedFromWorld FOnLevelInstanceChanged
local ALevelInstanceMgr = {}

---@param InInfo FLevelInstanceInfo
---@param bActive boolean
---@param bFlush boolean
function ALevelInstanceMgr:ToggleLevelInstance(InInfo, bActive, bFlush) end

---@param InInfos ULuaArrayHelper<FLevelInstanceInfo>
---@param bActive boolean
---@param bFlush boolean
function ALevelInstanceMgr:ToggleLevelInstances(InInfos, bActive, bFlush) end

---@param InInfos ULuaArrayHelper<FLevelInstanceInfo>
function ALevelInstanceMgr:RemoveLevelInstances(InInfos) end

---@param LevelName string
---@return string
function ALevelInstanceMgr:GenerateUniqueName(LevelName) end

---@param InInfo FLevelInstanceInfo
function ALevelInstanceMgr:CheckLevelInfo(InInfo) end

---@param InInfo FLevelInstanceInfo
---@return boolean
function ALevelInstanceMgr:IsLevelInstanceActive(InInfo) end

function ALevelInstanceMgr:PrintWorldStreamingLevels() end

function ALevelInstanceMgr:PrintInstanceLevels() end

---@param InLevel ULevel
---@return string
function ALevelInstanceMgr:GetLevelPackageName(InLevel) end

---@param InLevel ULevel
---@return string
function ALevelInstanceMgr:GetLevelShortName(InLevel) end
