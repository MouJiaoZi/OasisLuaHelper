---@meta

---@class AAsianGameFlyingSaucerTarget: AAsianGameParabolaTarget
---@field bHitByPlayer boolean
local AAsianGameFlyingSaucerTarget = {}

function AAsianGameFlyingSaucerTarget:OnCurrentHealthReachedZero() end

---@param EventInstigator AController
---@return boolean
function AAsianGameFlyingSaucerTarget:IsDamagedByTheTeamInFlyingSaucerRegion(EventInstigator) end
