---@meta

---@class IOverShoulderPerspective
IOverShoulderPerspective = {}

---@param bState boolean
---@return boolean
function IOverShoulderPerspective:OverShoulder(bState) end

---@return boolean
function IOverShoulderPerspective:CheckIsOverShoulder() end

---@param State ESTEPoseState
---@return boolean
function IOverShoulderPerspective:PoseStateChange(State) end
