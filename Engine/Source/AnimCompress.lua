---@meta

---@class UAnimCompress: UObject
---@field Description string @Name of Compression Scheme used for this asset
---@field bNeedsSkeleton number @Compression algorithms requiring a skeleton should set this value to true.
---@field TranslationCompressionFormat AnimationCompressionFormat @Format for bitwise compression of translation data.
---@field RotationCompressionFormat AnimationCompressionFormat @Format for bitwise compression of rotation data.
---@field ScaleCompressionFormat AnimationCompressionFormat @Format for bitwise compression of scale data.
---@field MaxCurveError number @Max error for compression of curves using remove redundant keys
local UAnimCompress = {}
