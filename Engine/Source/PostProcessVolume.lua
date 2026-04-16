---@meta

---@class APostProcessVolume: AVolume, IInterface_PostProcessVolume
---@field Settings any @Post process settings to use for this volume.
---@field Priority number @Priority of this volume. In the case of overlapping volumes the one with the highest priority overrides the lower priority ones. The order is undefined if two or more overlapping volumes have the same priority.
---@field BlendRadius number @World space radius around the volume that is used for blending (only if not unbound).
---@field BlendWeight number @0:no effect, 1:full effect
---@field bEnabled number @Whether this volume is enabled or not.
---@field bUnbound number @Whether this volume covers the whole world, or just the area inside its bounds.
local APostProcessVolume = {}
