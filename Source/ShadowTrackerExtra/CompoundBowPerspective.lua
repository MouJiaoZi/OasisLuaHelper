---@meta

---@class ICompoundBowPerspective
ICompoundBowPerspective = {}

---@param bState boolean
---@return boolean
function ICompoundBowPerspective:OverShoulder(bState) end

---@return boolean
function ICompoundBowPerspective:CheckIsOverShoulder() end

---@param State ESTEPoseState
---@return boolean
function ICompoundBowPerspective:PoseStateChange(State) end
