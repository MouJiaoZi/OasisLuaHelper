---@meta

---@class UMapUIFogManager: UActorComponent
---@field DefaultMapID number
---@field MapUIFogConfigInfos ULuaArrayHelper<FMapUIFogConfigInfo>
local UMapUIFogManager = {}

---@param PossessedPawn APawn
function UMapUIFogManager:OnPlayerProcessedPawn(PossessedPawn) end
