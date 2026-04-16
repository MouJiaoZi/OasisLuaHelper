---@meta

---UPixelProjectedReflectionComponent
---@class UPixelProjectedReflectionComponent: USceneCaptureComponent
---@field NormalDistortionStrength number @Controls the strength of normals when distorting the planar reflection.
---@field SkyDistanceFadeoutStart number @Receiving pixels at this distance from the reflection plane will begin to fade out the planar reflection.
---@field SkyDistanceFadeoutEnd number @Receiving pixels at this distance from the reflection plane will have completely faded out the planar reflection.
---@field DistanceFromPlaneFadeStart_DEPRECATED number
---@field DistanceFromPlaneFadeEnd_DEPRECATED number
---@field DistanceFromPlaneFadeoutStart number @Receiving pixels at this distance from the reflection plane will begin to fade out the planar reflection.
---@field DistanceFromPlaneFadeoutEnd number @Receiving pixels at this distance from the reflection plane will have completely faded out the planar reflection.
---@field AngleFromPlaneFadeStart number @Receiving pixels whose normal is at this angle from the reflection plane will begin to fade out the planar reflection.
---@field AngleFromPlaneFadeEnd number @Receiving pixels whose normal is at this angle from the reflection plane will have completely faded out the planar reflection.
---@field HeightAdjustmentVolumes ULuaArrayHelper<APixelProjectedReflectionHeightAdjustmentVolume>
---@field VisibilityVolumes ULuaArrayHelper<APixelProjectedReflectionVisibilityVolume>
local UPixelProjectedReflectionComponent = {}
