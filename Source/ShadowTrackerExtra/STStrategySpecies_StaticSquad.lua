---@meta

---根据小队ID随机AI
---@class USTStrategySpecies_StaticSquad: USTStrategySpecies
---@field SquadIndex number
local USTStrategySpecies_StaticSquad = {}

---@param Owner ASTSpawnerBase
function USTStrategySpecies_StaticSquad:ActivateStrategy(Owner) end

---对外输出生员
---@param ReferencedCount number
---@param SpotSpecies ULuaArrayHelper<FSpawnSpotInfo>
function USTStrategySpecies_StaticSquad:Supply(ReferencedCount, SpotSpecies) end

---@param ReferencedCount number
---@param SquadConfig FSquadConfig
---@param Units ULuaArrayHelper<FUnitConfig>
function USTStrategySpecies_StaticSquad:WeightedReadSquad(ReferencedCount, SquadConfig, Units) end
