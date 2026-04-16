---@meta

---@class APxgTeam: AActor
local APxgTeam = {}

---@param InTeamIndex number
function APxgTeam:SetTeamIndex(InTeamIndex) end

---@return number
function APxgTeam:GetTeamIndex() end

---@return boolean
function APxgTeam:IsEmpty() end

---@param Member AActor
function APxgTeam:AddMember(Member) end

---@param Member AActor
function APxgTeam:RemoveMember(Member) end

---@param Members ULuaArrayHelper<AActor>
function APxgTeam:GetMembers(Members) end

function APxgTeam:ClearMembers() end
