---@meta

---@class ASTExtraPlayerStateBorderland: ASTExtraPlayerState
---@field BDLReviveTime number
---@field ReviveCount number
---@field bBDLCanNotRevive boolean
---@field bBDLReviveFlag boolean
---@field OnSelfPlayerStateReviveCountChangeDelegate FOnSelfPlayerStateReviveCountChangeDelegate
---@field OnPlayerReviveHandleRemovedDelegate FOnPlayerReviveHandleRemovedDelegate
local ASTExtraPlayerStateBorderland = {}

function ASTExtraPlayerStateBorderland:OnRep_BDLReviveTime() end

function ASTExtraPlayerStateBorderland:OnRep_ReviveCount() end

function ASTExtraPlayerStateBorderland:OnRep_bBDLReviveFlag() end

---@param PlayerController AUAEPlayerController
function ASTExtraPlayerStateBorderland:OnPlayerControllerRespawned(PlayerController) end
