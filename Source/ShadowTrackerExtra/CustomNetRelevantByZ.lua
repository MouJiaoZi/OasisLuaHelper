---@meta

---@class ENetRelevantZCompareMode
---@field NRZCM_Greater number @高于
---@field NRZCM_LessThan number @低于
ENetRelevantZCompareMode = {}


---@class UCustomNetRelevantByZ: UCustomNetRelevantBase
---@field ZCompareMode ENetRelevantZCompareMode
---@field BaseZ number
---@field UpRelativeZ number
---@field BelowRelativeZ number
---@field bAbsolute boolean
local UCustomNetRelevantByZ = {}
