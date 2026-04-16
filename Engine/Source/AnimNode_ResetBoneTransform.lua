---@meta

---Simple controller that replaces or adds to the translation/rotation of a single bone.
---@class FAnimNode_ResetBoneTransform
---@field BonesToModify ULuaArrayHelper<FBoneReference> @Name of bone to control. This is the main bone chain to modify from. *
---@field ReferenceParentBone FBoneReference
---@field ReferenceRootBone FBoneReference
FAnimNode_ResetBoneTransform = {}
