---@meta

---@class FAnimNode_SkeletalControlBase
---@field ComponentPose FComponentSpacePoseLink
---@field Alpha number
---@field AlphaScaleBias FInputScaleBias
---@field LODThreshold number
---@field bActiveNode boolean @Engine Modify Enable Node to be ignored at runtime but keep alpha value no change false will ignore (do no or skip) evaluate, but no affect on update
---@field ActualAlpha number
FAnimNode_SkeletalControlBase = {}
