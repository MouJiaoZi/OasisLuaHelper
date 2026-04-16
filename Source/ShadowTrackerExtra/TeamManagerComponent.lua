---@meta

---@class UTeamManagerComponent: UGameModeBaseComponent
local UTeamManagerComponent = {}

---@param TeamId number
---@param Member AActor
function UTeamManagerComponent:AddMember(TeamId, Member) end

---@param TeamId number
---@param Member AActor
function UTeamManagerComponent:RemoveMember(TeamId, Member) end
