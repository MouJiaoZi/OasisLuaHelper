---@meta

---@class UShowcaseBoardModeComponent: UGameModeBaseComponent
---@field AvatarSyncActorClass AAvatarShowcaseSyncActor
local UShowcaseBoardModeComponent = {}

---@param VictimKey number
---@param KillerKey number
---@param bIsAI boolean
function UShowcaseBoardModeComponent:OnPlayerKilled(VictimKey, KillerKey, bIsAI) end
