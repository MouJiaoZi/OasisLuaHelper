---@meta

---@class URunningTeamUpComponent: UActorComponent
---@field MaxTeammatesNum number
local URunningTeamUpComponent = {}

function URunningTeamUpComponent:RequestChangeTeam() end

function URunningTeamUpComponent:CancelChangeTeam() end

---@param RequestPlayerKey number
function URunningTeamUpComponent:AcceptChangeTeam(RequestPlayerKey) end

function URunningTeamUpComponent:NotifyPlayerTeamDestroyed() end

---@param PlayerState ASTExtraPlayerState
---@param NewTeamID number
---@return boolean
function URunningTeamUpComponent:ExecuteChangeTeam(PlayerState, NewTeamID) end

---@param PlayerState ASTExtraPlayerState
---@param NewTeamID number
---@return boolean
function URunningTeamUpComponent:ConditionCheck(PlayerState, NewTeamID) end

---@param PlayerState ASTExtraPlayerState
---@param NewTeamID number
---@param PrevTeamID number
function URunningTeamUpComponent:HandleCustomData(PlayerState, NewTeamID, PrevTeamID) end

---@param PlayerState ASTExtraPlayerState
---@param NewTeamID number
function URunningTeamUpComponent:ChangeTeamModeComponentData(PlayerState, NewTeamID) end

---@param RequestPlayerState ASTExtraPlayerState
---@param NewTeamID number
function URunningTeamUpComponent:HandleNewTeam(RequestPlayerState, NewTeamID) end

---@param PrevTeamID number
function URunningTeamUpComponent:HandlePreviousTeam(PrevTeamID) end
