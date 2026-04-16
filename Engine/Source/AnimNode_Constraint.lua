---@meta

---Enum value to describe how you'd like to maintain offset
---@class EConstraintOffsetOption
---@field None number
---@field Offset_RefPose number
EConstraintOffsetOption = {}


---Constraint Set up
---@class FConstraint
---@field TargetBone FBoneReference @Target Bone this is constraint to
---@field OffsetOption EConstraintOffsetOption @Maintain offset based on refpose or not. None - no offset Offset_RefPose - offset is created based on reference pose In the future, we'd like to support custom offset, not just based on ref pose
---@field TransformType ETransformConstraintType @What transform type is constraint to - Translation, Rotation, Scale OR Parent. Parent overrides all component
---@field PerAxis FFilterOptionPerAxis @Per axis filter options - applied in their local space not in world space
FConstraint = {}


---Constraint node to parent or world transform for rotation/translation
---@class FAnimNode_Constraint
---@field BoneToModify FBoneReference @Name of bone to control. This is the main bone chain to modify from. *
---@field ConstraintSetup ULuaArrayHelper<FConstraint> @List of constraints
---@field ConstraintWeights ULuaArrayHelper<number> @Weight data - post edit syncs up to ConstraintSetups
FAnimNode_Constraint = {}
