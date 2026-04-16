---@meta

---@class UCampToolComponent: UActorComponent
local UCampToolComponent = {}

function UCampToolComponent:InitCamptToolSwitch() end

---@param InCampAbilityID number
---@return boolean
function UCampToolComponent:IsCampAbilityOpen(InCampAbilityID) end
