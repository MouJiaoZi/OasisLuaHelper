---@meta

---@class UTeamPanelFollowItem: UUAEUserWidget
local UTeamPanelFollowItem = {}

function UTeamPanelFollowItem:BP_InitWidget() end

function UTeamPanelFollowItem:BP_SimInvite() end

---@param InTeammateName string
function UTeamPanelFollowItem:BP_InitItem(InTeammateName) end

---@param InTeamIndex number
---@param InPlayerInTeamIndex number
---@param InTeammateFollowState FParachuteFollowState
---@param InPlayerFollowState FParachuteFollowState
---@param InPlayerLiveState ExtraPlayerLiveState
function UTeamPanelFollowItem:BP_RefreshState(InTeamIndex, InPlayerInTeamIndex, InTeammateFollowState, InPlayerFollowState, InPlayerLiveState) end
