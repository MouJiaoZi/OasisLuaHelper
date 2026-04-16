---@meta

---Operation used to construct the vector field from a 2D texture.
---@class EVectorFieldConstructionOp
---@field VFCO_Extrude number @Extrude
---@field VFCO_Revolve number @Revolve
---@field VFCO_MAX number
EVectorFieldConstructionOp = {}


---@class UVectorFieldAnimated: UVectorField
---@field ConstructionOp EVectorFieldConstructionOp @The operation used to construct the vector field.
---@field VolumeSizeX number @The size of the volume. Valid sizes: 16, 32, 64.
---@field VolumeSizeY number @The size of the volume. Valid sizes: 16, 32, 64.
---@field VolumeSizeZ number @The size of the volume. Valid sizes: 16, 32, 64.
---@field SubImagesX number @The number of horizontal subimages in the texture atlas.
---@field SubImagesY number @The number of vertical subimages in the texture atlas.
---@field FrameCount number @The number of frames in the atlas.
---@field FramesPerSecond number @The rate at which to interpolate between frames.
---@field bLoop number @Whether or not the simulation should loop.
---@field NoiseScale number @Scale to apply to vectors in the noise field.
---@field NoiseMax number @The maximum magnitude of noise vectors to apply.
local UVectorFieldAnimated = {}
