---@meta

---Settings that control Slate functionality
---@class USlateSettings: UObject
---@field bExplicitCanvasChildZOrder boolean @Allow children of SConstraintCanvas to share render layers. Children must set explicit ZOrder on their slots to control render order. Recommendation: Enable for mobile platforms.
---@field bEnableFixedLayerFeature boolean @Force Image Widgets render in a given render layers to make them share one render layer.
local USlateSettings = {}
