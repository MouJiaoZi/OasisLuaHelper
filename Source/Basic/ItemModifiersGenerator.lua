---@meta

---@class FItemModifiersGeneratorMethodData
---@field GameModeID number
---@field GeneratorMethodPath string
FItemModifiersGeneratorMethodData = {}


---@class UItemModifiersGenerator: UObject
local UItemModifiersGenerator = {}

---@param GameModeID number
function UItemModifiersGenerator:InitGeneratorParams(GameModeID) end

---@param IsNewSeason boolean
function UItemModifiersGenerator:InitExtraGeneratorParams(IsNewSeason) end
