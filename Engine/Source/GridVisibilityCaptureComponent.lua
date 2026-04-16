---@meta

---@class FGridVisibilityCameraInfo
---@field CameraDirections ULuaArrayHelper<FVector>
---@field CameraLocation FVector
FGridVisibilityCameraInfo = {}


---@class UGridVisibilityCaptureComponent: USceneComponent
---@field FOVAngle number @Camera field of view (in degrees).
---@field CaptureViewSize FIntPoint
---@field NearClipPlane number
---@field GridMeshSizeScale FVector
---@field GridMeshLocationOffset FVector
---@field bForceLowestLOD number
---@field bHiddenFoliage number
---@field OcclusionDepthDiffThreshold number
---@field bShouldRenderGridMeshInMainPass number
---@field MaxNumProcessWaitingResultCmdsPerFrame number
---@field MaxNumProcessWaitingCalculateCmdsPerFrame number
---@field GridSize FIntPoint
local UGridVisibilityCaptureComponent = {}

---@param InGridLocations ULuaArrayHelper<FVector>
function UGridVisibilityCaptureComponent:InitGridIDVisibilityCalculation(InGridLocations) end

---@param GridID number
---@param CameraLocations ULuaArrayHelper<FGridVisibilityCameraInfo>
---@param PotentialGrids ULuaArrayHelper<number>
function UGridVisibilityCaptureComponent:CalculateGridIDVisibility(GridID, CameraLocations, PotentialGrids) end

function UGridVisibilityCaptureComponent:FinishGridIDVisibilityCalculation() end


---@class UInstancedGridMeshComponent: UInstancedStaticMeshComponent
local UInstancedGridMeshComponent = {}
