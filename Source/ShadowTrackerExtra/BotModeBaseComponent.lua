---@meta

---@class UBotModeBaseComponent: UActorComponent
local UBotModeBaseComponent = {}

---@param BotType string
---@param EventType string
---@param PlayerKey number
---@param Params ULuaMapHelper<string, string>
function UBotModeBaseComponent:SendAIEventRequest(BotType, EventType, PlayerKey, Params) end
