---@meta

---@class EScaleChainInitialLength
---@field FixedDefaultLengthValue number @Use the 'DefaultChainLength' input value.
---@field Distance number @Use distance between 'ChainStartBone' and 'ChainEndBone' (in Component Space)
---@field ChainLength number
EScaleChainInitialLength = {}


---Scale the length of a chain of bones.
---@class FAnimNode_ScaleChainLength
---@field InputPose FPoseLink
---@field DefaultChainLength number @Default chain length, as animated.
---@field ChainStartBone FBoneReference
---@field ChainEndBone FBoneReference
---@field ChainInitialLength EScaleChainInitialLength
---@field TargetLocation FVector
---@field Alpha number
---@field ActualAlpha number
---@field AlphaScaleBias FInputScaleBias
---@field bBoneIndicesCached boolean
FAnimNode_ScaleChainLength = {}
