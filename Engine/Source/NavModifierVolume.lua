---@meta

---Allows applying selected AreaClass to navmesh, using Volume's shape
---@class ANavModifierVolume: AVolume, INavRelevantInterface
---@field AreaClass UNavArea
local ANavModifierVolume = {}

---@param NewAreaClass UNavArea
function ANavModifierVolume:SetAreaClass(NewAreaClass) end
