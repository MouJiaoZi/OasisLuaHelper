---@meta

---@class FLostTombLayerBoundData
---@field Layer number
---@field Bound FBox
---@field Priority number
FLostTombLayerBoundData = {}


---@class ALostTomb_LayerData: AActor
---@field LayerData ULuaArrayHelper<FLostTombLayerBoundData>
---@field LayerVolumeClass AActor
local ALostTomb_LayerData = {}

function ALostTomb_LayerData:BuildData() end

---@param Location FVector
---@return number
function ALostTomb_LayerData:GetLayer(Location) end
