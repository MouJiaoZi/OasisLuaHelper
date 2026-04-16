---@meta

---@class UVisualFieldFeature: UObject
---@field VisualFieldFeatureParam FVisualFieldFeatureParam
---@field VisualFieldTickTimerHandle FTimerHandle
---@field VisualFieldFrame FVisualFieldFrame
---@field VisualAngleLimitMap ULuaMapHelper<number, number>
local UVisualFieldFeature = {}

function UVisualFieldFeature:UpdateVisualFieldMeta() end
