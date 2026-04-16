---@meta

---@class ASkyLight: AInfo
---@field bEnabled number @replicated copy of LightComponent's bEnabled property
local ASkyLight = {}

---Replication Notification Callbacks
function ASkyLight:OnRep_bEnabled() end
