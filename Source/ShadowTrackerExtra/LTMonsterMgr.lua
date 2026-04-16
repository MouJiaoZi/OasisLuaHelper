---@meta

---@class ILTMonsterOptimization
ILTMonsterOptimization = {}

---开启降频（Sleep）
function ILTMonsterOptimization:EnterLowFrequency() end

---退出降频
function ILTMonsterOptimization:ExitLowFrequency() end

---是否已经降频
---@return boolean
function ILTMonsterOptimization:IsLowFrequency() end

---是否被region机制sleep
---@return boolean
function ILTMonsterOptimization:IsSleepByRegion() end


---@class ULTMonsterMgr: UActorComponent
---@field SleepDistance number @距离阈值（曼哈顿）
---@field CheckInterval number @检测间隔（秒）
---@field Monsters ULuaSetHelper<APawn> @所有怪物
local ULTMonsterMgr = {}

---@param InMonster APawn
function ULTMonsterMgr:RegisterMonster(InMonster) end

---@param InMonster APawn
function ULTMonsterMgr:UnRegisterMonster(InMonster) end
