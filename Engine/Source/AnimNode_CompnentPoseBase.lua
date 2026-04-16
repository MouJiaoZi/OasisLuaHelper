---@meta

---@class FSocketReference
---@field SocketName string @Target socket to look at. Used if LookAtBone is empty. - You can use  LookAtLocation if you need offset from this point. That location will be used in their local space. *
FSocketReference = {}


---@class FBoneSocketTarget
---@field bUseSocket boolean
---@field BoneReference FBoneReference
---@field SocketReference FSocketReference
FBoneSocketTarget = {}


---@class FAnimNode_CompnentPoseBase
---@field Alpha number
---@field AlphaScaleBias FInputScaleBias
---@field LODThreshold number
---@field bActiveNode boolean @Engine Modify Enable Node to be ignored at runtime but keep alpha value no change false will ignore (do no or skip) evaluate, but no affect on update
---@field ActualAlpha number
FAnimNode_CompnentPoseBase = {}
