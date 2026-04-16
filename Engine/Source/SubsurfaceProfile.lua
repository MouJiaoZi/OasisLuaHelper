---@meta

---@class FSubsurfaceProfileStruct
---@field ScatterRadius number @in world/unreal units (cm)
---@field SubsurfaceColor FLinearColor @Specifies the how much of the diffuse light gets into the material, can be seen as a per-channel mix factor between the original image, and the SSS-filtered image (called "strength" in SeparableSSS, default there: 0.48, 0.41, 0.28)
---@field FalloffColor FLinearColor @defines the per-channel falloff of the gradients produced by the subsurface scattering events, can be used to fine tune the color of the gradients (called "falloff" in SeparableSSS, default there: 1, 0.37, 0.3)
FSubsurfaceProfileStruct = {}


---Subsurface Scattering profile asset, can be specified at the material. Only for "Subsurface Profile" materials, is use during Screenspace Subsurface Scattering Don't change at runtime. All properties in here are per material - texture like variations need to come from properties that are in the GBuffer.
---@class USubsurfaceProfile: UObject
---@field Settings any
local USubsurfaceProfile = {}
