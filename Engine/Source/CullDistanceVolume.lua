---@meta

---Helper structure containing size and cull distance pair.
---@class FCullDistanceSizePair
---@field Size number @Size to associate with cull distance.
---@field CullDistance number @Cull distance associated with size.
FCullDistanceSizePair = {}


---@class ACullDistanceVolume: AVolume
---@field CullDistances ULuaArrayHelper<FCullDistanceSizePair> @Array of size and cull distance pairs. The code will calculate the sphere diameter of a primitive's BB and look for a best fit in this array to determine which cull distance to use.
---@field bEnabled number @Whether the volume is currently enabled or not.
---@field bEnabledDeviceScale number
---@field VeryLowScale number
---@field LowScale number
---@field MidScale number
---@field HighScale number
local ACullDistanceVolume = {}
