---@meta

---@class AExponentialHeightFog: AInfo
---@field bEnabled number @replicated copy of ExponentialHeightFogComponent's bEnabled property
local AExponentialHeightFog = {}

---Replication Notification Callbacks
function AExponentialHeightFog:OnRep_bEnabled() end
