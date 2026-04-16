---@meta

---@class FShowcaseTeamInfo
---@field TeamName string
---@field TeamLogoID string
FShowcaseTeamInfo = {}


---@class AAvatarShowcaseSyncActor_PeakCompete: AAvatarShowcaseSyncActor_SpecifyWeapon
---@field TeamInfo FShowcaseTeamInfo
local AAvatarShowcaseSyncActor_PeakCompete = {}

---@param InputTargetPlayerState ULuaArrayHelper<ASTExtraPlayerState>
function AAvatarShowcaseSyncActor_PeakCompete:SetTargetPlayerStates(InputTargetPlayerState) end

function AAvatarShowcaseSyncActor_PeakCompete:OnRep_TeamInfo() end
