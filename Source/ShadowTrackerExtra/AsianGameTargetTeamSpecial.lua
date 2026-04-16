---@meta

---@class FTargetHealthPerTeam
---@field CurHealth number
---@field BisAlive boolean
---@field TeamID number
FTargetHealthPerTeam = {}


---@class AAsianGameTargetTeamSpecial: AAsianGameBaseTarget
---@field PerTeamData ULuaArrayHelper<FTargetHealthPerTeam>
---@field TeamTimerHandle ULuaMapHelper<number, FTimerHandle>
local AAsianGameTargetTeamSpecial = {}

function AAsianGameTargetTeamSpecial:InitPerTeamData() end

---@param TeamID number
---@param Damage number
---@return boolean
function AAsianGameTargetTeamSpecial:ChangeTeamData(TeamID, Damage) end

---@param DataPerTeam FTargetHealthPerTeam
---@param TeamID number
function AAsianGameTargetTeamSpecial:GetTeamDataByTeamID(DataPerTeam, TeamID) end

---@param TeamID number
---@return number
function AAsianGameTargetTeamSpecial:GetCurHealthByTeamID(TeamID) end

function AAsianGameTargetTeamSpecial:OnRep_PerTeamData() end

---@param _BisAlive boolean
function AAsianGameTargetTeamSpecial:ClientTeamHealthZero(_BisAlive) end

---@param TeamID number
function AAsianGameTargetTeamSpecial:TeamTargetReset(TeamID) end

function AAsianGameTargetTeamSpecial:DOREPONCE_PerTeamData() end
