---@meta

---@class ALobbyMultiEmoteActor: AActor
---@field BindingNameInLevelSequence string
---@field LocationToSocketName ULuaMapHelper<EDuoActionPerformanceLocation, string>
local ALobbyMultiEmoteActor = {}

---@param InCharacter AActor
---@param InLocation EDuoActionPerformanceLocation
function ALobbyMultiEmoteActor:AttachCharacterToSocket(InCharacter, InLocation) end
