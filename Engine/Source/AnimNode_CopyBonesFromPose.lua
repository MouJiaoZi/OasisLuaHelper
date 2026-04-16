---@meta

---@class FAnimNode_CopyBonesFromPose_Config
---@field Bone FBoneReference @Source Bone Name to get transform from
---@field bCopyTranslation boolean @If Translation should be copied
---@field bCopyRotation boolean @If Rotation should be copied
---@field bCopyRotation_Roll boolean
---@field bCopyRotation_Pitch boolean
---@field bCopyRotation_Yaw boolean
---@field bCopyScale boolean
---@field ControlSpace EBoneControlSpace @Space to convert transforms into prior to copying components
FAnimNode_CopyBonesFromPose_Config = {}


---Simple controller to copy a bone's transform to another one.
---@class FAnimNode_CopyBonesFromPose
---@field ToPose FComponentSpacePoseLink
---@field FromPose FComponentSpacePoseLink
---@field CopeBones ULuaArrayHelper<FAnimNode_CopyBonesFromPose_Config>
FAnimNode_CopyBonesFromPose = {}
