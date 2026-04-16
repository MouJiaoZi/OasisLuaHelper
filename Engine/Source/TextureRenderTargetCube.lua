---@meta

---TextureRenderTargetCube Cube render target texture resource. This can be used as a target for rendering as well as rendered as a regular cube texture resource.
---@class UTextureRenderTargetCube: UTextureRenderTarget
---@field SizeX number @The width of the texture.
---@field ClearColor FLinearColor @the color the texture is cleared to
---@field OverrideFormat EPixelFormat @Normally the format is derived from bHDR, this allows code to set the format explicitly.
---@field bHDR number @Whether to support storing HDR values, which requires more memory.
---@field bForceLinearGamma number @True to force linear gamma space for this render target
local UTextureRenderTargetCube = {}
