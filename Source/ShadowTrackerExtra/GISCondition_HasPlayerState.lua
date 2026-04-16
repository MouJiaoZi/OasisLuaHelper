---@meta

---@class ECHPTMode
---@field ECHPTMode_Any number
---@field ECHPTMode_All number
ECHPTMode = {}


---@class UGISCondition_HasPlayerState: UGISObjectCondition
---@field States ULuaArrayHelper<EPawnState>
---@field CheckMode ECHPTMode
---@field IsNot boolean
local UGISCondition_HasPlayerState = {}
