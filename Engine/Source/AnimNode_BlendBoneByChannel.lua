---@meta

---@class FBlendBoneByChannelEntry
---@field SourceBone FBoneReference @Bone to take Transform from
---@field TargetBone FBoneReference @Bone to apply Transform to
---@field bBlendTranslation boolean @Copy Translation from Source to Target
---@field bBlendRotation boolean @Copy Rotation from Source to Target
---@field bBlendScale boolean @Copy Scale from Source to Target
FBlendBoneByChannelEntry = {}


---@class FAnimNode_BlendBoneByChannel
---@field A FPoseLink
---@field B FPoseLink
---@field Alpha number
---@field AlphaScaleBias FInputScaleBias
---@field BoneDefinitions ULuaArrayHelper<FBlendBoneByChannelEntry>
---@field TransformsSpace EBoneControlSpace @Space to convert transforms into prior to copying channels
---@field InternalBlendAlpha number
---@field bBIsRelevant boolean
---@field ValidBoneEntries ULuaArrayHelper<FBlendBoneByChannelEntry>
FAnimNode_BlendBoneByChannel = {}
