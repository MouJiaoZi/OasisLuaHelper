---@meta

---@class AWarPlayerState_GrandTheft: AWarPlayerState
---@field ThiefLocation FVector
---@field ScoreLeaderLocation FVector
local AWarPlayerState_GrandTheft = {}

---@param NewScore number
function AWarPlayerState_GrandTheft:AddScore(NewScore) end

---@return number
function AWarPlayerState_GrandTheft:LoseScore() end

function AWarPlayerState_GrandTheft:OnRep_ThiefLocation() end

function AWarPlayerState_GrandTheft:OnRep_ScoreLeaderLocation() end
