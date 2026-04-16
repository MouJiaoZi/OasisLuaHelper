---@meta

---@class URCRBuildingVisualizerComponent: UPrimitiveComponent
---@field BoxList ULuaArrayHelper<FRCRBox>
local URCRBuildingVisualizerComponent = {}

function URCRBuildingVisualizerComponent:OnRep_BoxList() end

---@param bShow boolean
function URCRBuildingVisualizerComponent:VisualizeRCRBoxInfo(bShow) end
