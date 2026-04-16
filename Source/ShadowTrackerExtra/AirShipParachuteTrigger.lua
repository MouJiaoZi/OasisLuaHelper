---@meta

---@class AAirShipParachuteTrigger: ABigAirShipActor
---@field LaunchedPlayer ULuaArrayHelper<ASTExtraBaseCharacter>
---@field LaunchedPlayerMap ULuaMapHelper<ASTExtraBaseCharacter, number>
---@field bCanTriggerTick boolean
local AAirShipParachuteTrigger = {}

---@param Player ASTExtraBaseCharacter
function AAirShipParachuteTrigger:ForcePlayerToOpenParachute(Player) end

---@param Player ASTExtraBaseCharacter
function AAirShipParachuteTrigger:KillPlayerDirectly(Player) end
