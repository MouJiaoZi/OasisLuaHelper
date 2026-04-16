---@meta

---单位种类: 脚本化
---@class USTStrategySpecies_Lua: USTStrategySpecies
local USTStrategySpecies_Lua = {}

---对外输出生员
---@param ReferencedCount number
---@param SpotSpecies ULuaArrayHelper<FSpawnSpotInfo>
function USTStrategySpecies_Lua:Supply(ReferencedCount, SpotSpecies) end

---@param ReferencedCount number
function USTStrategySpecies_Lua:LuaSupply(ReferencedCount) end
