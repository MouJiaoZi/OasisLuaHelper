---@meta

---@class AUGCGameStateTDM: ABRGameStateTeam_DeathMatch
---@field UGCPlayerNum number
---@field UGCPlayerNumWithAI number
---@field UGCProgramName string
---@field UGCMountId string
---@field SubUGCKey number
---@field UGCUIModulePrefab string
---@field bItemDBPreloading boolean
---@field bAlivePlayerNumEnabled boolean
---@field bEarlierWinTipsEnabled boolean
local AUGCGameStateTDM = {}

function AUGCGameStateTDM:OnRep_UGCPlayerNum() end

function AUGCGameStateTDM:OnRep_UGCPlayerNumWithAI() end

function AUGCGameStateTDM:OnRep_UGCProgramName() end

function AUGCGameStateTDM:OnRep_UGCMountId() end

function AUGCGameStateTDM:OnRep_SubUGCKey() end

function AUGCGameStateTDM:OnRep_UGCUIModulePrefab() end

---@param PlayerKey number
---@param MsgTitle string
---@param MsgContent string
function AUGCGameStateTDM:ClientOnSystemNotify(PlayerKey, MsgTitle, MsgContent) end

---@param TeamID number
---@param ScoreType string
---@param Score number
function AUGCGameStateTDM:UGCUpdateTeamScore(TeamID, ScoreType, Score) end
