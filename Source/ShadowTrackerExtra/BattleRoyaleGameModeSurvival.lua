---@meta

---@class ABattleRoyaleGameModeSurvival: ABattleRoyaleGameModeZombie
---@field TotalHelicopterNum number
---@field RemainHelicopterNum number
local ABattleRoyaleGameModeSurvival = {}

---@param TeamID number
---@return boolean
function ABattleRoyaleGameModeSurvival:IsAnyTeammateEscaped(TeamID) end

---@return boolean
function ABattleRoyaleGameModeSurvival:IsAllHelicopterGone() end

---@param HelicopterID number
function ABattleRoyaleGameModeSurvival:HelicopterGone(HelicopterID) end
