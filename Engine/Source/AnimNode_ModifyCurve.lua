---@meta

---@class EModifyCurveApplyMode
---@field Add number @Add new value to input curve value
---@field Scale number @Scale input value by new value
---@field Blend number @Blend input with new curve value, using Alpha setting on the node
EModifyCurveApplyMode = {}


---Easy way to modify curve values on a pose
---@class FAnimNode_ModifyCurve
---@field SourcePose FPoseLink
---@field ApplyMode EModifyCurveApplyMode
---@field CurveValues ULuaArrayHelper<number>
---@field CurveNames ULuaArrayHelper<string>
---@field Alpha number
FAnimNode_ModifyCurve = {}
