---@meta

---@class FRCRMinimalDebugInfo
---@field ViewerCameraLoc0 FVector
---@field bCameraBlocked number
---@field TargetLoc FVector
---@field TargetRot FRotator
---@field TargetPose string
---@field LocatingExtent FVector
---@field BoundingExtent FVector
FRCRMinimalDebugInfo = {}


---@class URCRResultDebugInfoVisualizationComponent: URCRVisualizationComponent
local URCRResultDebugInfoVisualizationComponent = {}

function URCRResultDebugInfoVisualizationComponent:ClientReadDebugLog() end

---@param MinimalDebugInfo FRCRMinimalDebugInfo
function URCRResultDebugInfoVisualizationComponent:ServerSendDebugInfo(MinimalDebugInfo) end
