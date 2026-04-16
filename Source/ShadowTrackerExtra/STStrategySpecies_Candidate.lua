---@meta

---从AI候选池里取
---@class USTStrategySpecies_Candidate: USTStrategySpecies
local USTStrategySpecies_Candidate = {}

---@param Owner ASTSpawnerBase
function USTStrategySpecies_Candidate:ActivateStrategy(Owner) end

---对外输出生员
---@param ReferencedCount number
---@param SpotSpecies ULuaArrayHelper<FSpawnSpotInfo>
function USTStrategySpecies_Candidate:Supply(ReferencedCount, SpotSpecies) end
