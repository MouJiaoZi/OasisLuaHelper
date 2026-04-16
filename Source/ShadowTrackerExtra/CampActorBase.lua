---@meta

---@class ACampActorBase: AActor
---@field CampActorInfo FCampActorInfo
---@field CampGameModeState string
---@field CampDead boolean
---@field CampReportedBattleResult boolean
local ACampActorBase = {}

function ACampActorBase:OnRep_CampActorInfo() end

---@param CampType number
---@param CompID number
function ACampActorBase:SetCampActorInfo(CampType, CompID) end

---@param State string
function ACampActorBase:OnGameModeStateChanged(State) end
