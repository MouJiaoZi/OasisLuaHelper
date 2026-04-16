---@meta

---@class FCountLimitActorFilterParams
---@field EnableCountLimit boolean
---@field PrioritizeCloserEnemies number
---@field LayerCountThreshold0 number
---@field LayerCountThreshold1 number
---@field LayerCountThreshold2 number
---@field LayerCountLimitMultiplier0 number
---@field LayerCountLimitMultiplier1 number
---@field LayerCountLimitMultiplier2 number
FCountLimitActorFilterParams = {}


---@class UActorFilter_InnerRange: UActorFilter
---@field InnerRangeDistance number
local UActorFilter_InnerRange = {}


---@class UActorFilter_CountLimit: UActorFilter
---@field CountLimitParams FCountLimitActorFilterParams
local UActorFilter_CountLimit = {}
