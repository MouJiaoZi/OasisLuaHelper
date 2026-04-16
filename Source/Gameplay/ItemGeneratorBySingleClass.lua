---@meta

---@class UItemGeneratorBySingleClass: UItemGeneratorComponent
---@field ItemGenerateSpawnClass FItemGenerateSpawnClass
---@field ExcludeMapName ULuaArrayHelper<string>
---@field SingleItemDistance number
---@field PreLoadedMapCount number
---@field ExcludeLocation FVector
---@field ExcludeRadius number
local UItemGeneratorBySingleClass = {}

---@param DeltaTime number
function UItemGeneratorBySingleClass:GenerateSpotOnTick(DeltaTime) end
