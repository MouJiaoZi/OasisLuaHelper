---@meta

---@class UParticleModuleVectorFieldLocal: UParticleModuleVectorFieldBase
---@field RelativeTranslation FVector @Translation of the vector field relative to the emitter.
---@field RelativeRotation FRotator @Rotation of the vector field relative to the emitter.
---@field RelativeScale3D FVector @Scale of the vector field relative to the emitter.
---@field Intensity number @Intensity of the local vector field.
---@field Tightness number @Tightness tweak value: 0: Force 1: Velocity.
---@field bIgnoreComponentTransform number @Ignore component transform.
---@field bTileX number @Tile vector field in x axis?
---@field bTileY number @Tile vector field in y axis?
---@field bTileZ number @Tile vector field in z axis?
---@field bUseFixDT number @Use fix delta time in the simulation?
local UParticleModuleVectorFieldLocal = {}
