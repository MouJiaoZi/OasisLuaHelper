---@meta

---Defines the domain of a material.
---@class EMaterialDomain
---@field MD_Surface number @The material's attributes describe a 3d surface.
---@field MD_DeferredDecal number @The material's attributes describe a deferred decal, and will be mapped onto the decal's frustum.
---@field MD_LightFunction number @The material's attributes describe a light's distribution.
---@field MD_Volume number @The material's attributes describe a 3d volume.
---@field MD_PostProcess number @The material will be used in a custom post process pass.
---@field MD_UI number @The material will be used for UMG or Slate UI
---@field MD_MAX number
EMaterialDomain = {}
