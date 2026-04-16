---@meta

---单位种类: Spot配置
---@class USTStrategySpecies_SpotConfig: USTStrategySpecies
---@field bForceSpawnToCount boolean
local USTStrategySpecies_SpotConfig = {}

---对外输出生员
---@param ReferencedCount number
---@param SpotSpecies ULuaArrayHelper<FSpawnSpotInfo>
function USTStrategySpecies_SpotConfig:Supply(ReferencedCount, SpotSpecies) end
