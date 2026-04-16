---@meta

---IDIP动态修改配置
---@class USTStrategySpecies_IDIPConfig: USTStrategySpecies
---@field IDIPEventName string @修改UnitConfig
---@field SpeciesConfig FUnitConfig
local USTStrategySpecies_IDIPConfig = {}

---修改UnitConfig
---@param ReferencedCount number
---@param SpotSpecies ULuaArrayHelper<FSpawnSpotInfo>
function USTStrategySpecies_IDIPConfig:Supply(ReferencedCount, SpotSpecies) end
