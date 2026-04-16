---@meta

---@class AUAERegionActor: AActor, IRegionObjectInterface
---@field bStatic boolean
---@field RegionSize ERegionSizeIndex
---@field bNeedUpdateNetworkInfo boolean
---@field bIsPurelyClientObject boolean
---@field bMRegionEnabled boolean
local AUAERegionActor = {}

---@param bOn boolean
function AUAERegionActor:ToggleRegionID(bOn) end

---@param InRegionSize ERegionSizeIndex
function AUAERegionActor:SetRegionSize(InRegionSize) end

function AUAERegionActor:DisableRegionBasedNetConsideration() end
