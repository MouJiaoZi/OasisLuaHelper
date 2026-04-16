---@meta

---@class ABRGameModeTeam_HardPoint: ABRGameModeTeam_DeathMatch
---@field HardPointStopJoinConfig FHardPointStopJoinConfig
local ABRGameModeTeam_HardPoint = {}

---@param PlayerController ASTExtraPlayerController
---@param Target AActor
---@param AdditionalParam number
---@param PickCount number
function ABRGameModeTeam_HardPoint:OnPickUpTarget(PlayerController, Target, AdditionalParam, PickCount) end

function ABRGameModeTeam_HardPoint:OnHardPointSwitchConfigEnd() end

---@param HardPointActor AHardPointActor
function ABRGameModeTeam_HardPoint:OnActivateNewHardPoint(HardPointActor) end

---@param HardPointActor AHardPointActor
function ABRGameModeTeam_HardPoint:OnActivatedHardPointEnd(HardPointActor) end
