---@meta

---@class UTriggerCondition_GameMode: UTriggerCondition_Task
---@field SpecifiedGameModeType EGameModeType @Directly set game mode type
local UTriggerCondition_GameMode = {}

---Directly set game mode type
---@param GameModeType EGameModeType
function UTriggerCondition_GameMode:SetGameModeType(GameModeType) end
