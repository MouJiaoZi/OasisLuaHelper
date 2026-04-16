---@meta

---@class UPositionValidityCheckComponent: UActorComponent
---@field MapData string
---@field WorldCenter2D FVector2D
---@field WorldExt number
local UPositionValidityCheckComponent = {}

---@return boolean
function UPositionValidityCheckComponent:WFAInit() end

---@param InvalidPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
function UPositionValidityCheckComponent:DoSomething(InvalidPlayers) end
