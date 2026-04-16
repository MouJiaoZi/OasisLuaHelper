---@meta

---Simple controller to copy a bone's transform to another one.
---@class FAnimNode_CopyBone
---@field SourceBone FBoneReference @Source Bone Name to get transform from
---@field TargetBone FBoneReference @Name of bone to control. This is the main bone chain to modify from. *
---@field bCopyTranslation boolean @If Translation should be copied
---@field bCopyRotation boolean @If Rotation should be copied
---@field bCopyScale boolean @If Scale should be copied
---@field ControlSpace EBoneControlSpace @Space to convert transforms into prior to copying components
FAnimNode_CopyBone = {}
