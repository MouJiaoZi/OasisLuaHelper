---@meta

---The update method for the offset
---@class EParticleCameraOffsetUpdateMethod
---@field EPCOUM_DirectSet number @Direct Set
---@field EPCOUM_Additive number @Additive
---@field EPCOUM_Scalar number @Scalar
---@field EPCOUM_MAX number
EParticleCameraOffsetUpdateMethod = {}


---@class UParticleModuleCameraOffset: UParticleModuleCameraBase
---@field CameraOffset any @The camera-relative offset to apply to sprite location
---@field bSpawnTimeOnly number @If true, the offset will only be processed at spawn time
---@field UpdateMethod EParticleCameraOffsetUpdateMethod @How to update the offset for this module. DirectSet - Set the value directly (overwrite any previous setting) Additive  - Add the offset of this module to the existing offset Scalar    - Scale the existing offset by the value of this module
local UParticleModuleCameraOffset = {}
