---@meta

---Supply curves from some external source (e.g. audio)
---@class FAnimNode_CurveSource
---@field SourcePose FPoseLink
---@field SourceBinding string @The binding of the curve source we want to bind to. We will bind to an object that implements ICurveSourceInterface. First we check the actor that owns this (if any), then we check each of its components to see if we should bind to the source that matches this name.
---@field Alpha number @How much we wan to blend the curve in by
---@field CurveSource ICurveSourceInterface @Our bound source
FAnimNode_CurveSource = {}
