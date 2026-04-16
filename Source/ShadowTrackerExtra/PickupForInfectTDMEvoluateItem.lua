---@meta

---突变模式拾取升级
---@class APickupForInfectTDMEvoluateItem: APickupForUpgradeItem
---@field bOverrideCampNetRelevant boolean
---@field CampType EInfectionCampType
local APickupForInfectTDMEvoluateItem = {}

---@param PlayerController ASTExtraPlayerController
function APickupForInfectTDMEvoluateItem:ForceFlushNetRelevancy(PlayerController) end
