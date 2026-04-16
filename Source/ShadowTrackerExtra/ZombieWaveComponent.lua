---@meta

---@class FZombieWaveConfig
---@field WaveIndex number
---@field WarningTime number
---@field SpawnTime number
---@field SpawnNum number
---@field DistanceWeight number
---@field AngleWeight number
---@field MonsterRefeshPlanID number
FZombieWaveConfig = {}


---@class UZombieWaveComponent: UTimerRegistComponent
---@field ConfigDatas ULuaArrayHelper<FZombieWaveConfig>
local UZombieWaveComponent = {}

function UZombieWaveComponent:InitZombieWaveTimer() end

---@param index number
function UZombieWaveComponent:WarningZombieWave(index) end

---@param index number
function UZombieWaveComponent:SpawnZombieWave(index) end

---@param Index number
---@param WarningTime number
---@param SpawnTime number
function UZombieWaveComponent:ModifyZombieWaveTime(Index, WarningTime, SpawnTime) end
