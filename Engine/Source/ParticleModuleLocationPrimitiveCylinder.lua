---@meta

---@class CylinderHeightAxis
---@field PMLPC_HEIGHTAXIS_X number @X
---@field PMLPC_HEIGHTAXIS_Y number @Y
---@field PMLPC_HEIGHTAXIS_Z number @Z
---@field PMLPC_HEIGHTAXIS_MAX number
CylinderHeightAxis = {}


---@class UParticleModuleLocationPrimitiveCylinder: UParticleModuleLocationPrimitiveBase
---@field RadialVelocity number @If true, get the particle velocity form the radial distance inside the primitive.
---@field StartRadius any @The radius of the cylinder.
---@field StartHeight any @The height of the cylinder, centered about the location.
---@field HeightAxis CylinderHeightAxis @Determine particle particle system axis that should represent the height of the cylinder. Can be one of the following: PMLPC_HEIGHTAXIS_X - Orient the height along the particle system X-axis. PMLPC_HEIGHTAXIS_Y - Orient the height along the particle system Y-axis. PMLPC_HEIGHTAXIS_Z - Orient the height along the particle system Z-axis.
local UParticleModuleLocationPrimitiveCylinder = {}
