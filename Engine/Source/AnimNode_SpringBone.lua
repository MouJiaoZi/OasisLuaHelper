---@meta

---Simple controller that replaces or adds to the translation/rotation of a single bone.
---@class FAnimNode_SpringBone
---@field SpringBone FBoneReference @Name of bone to control. This is the main bone chain to modify from. *
---@field bLimitDisplacement boolean @Limit the amount that a bone can stretch from its ref-pose length.
---@field MaxDisplacement number @If bLimitDisplacement is true, this indicates how long a bone can stretch beyond its length in the ref-pose.
---@field SpringStiffness number @Stiffness of spring
---@field SpringDamping number @Damping of spring
---@field ErrorResetThresh number @If spring stretches more than this, reset it. Useful for catching teleports etc
---@field bNoZSpring_DEPRECATED boolean @If true, Z position is always correct, no spring applied
---@field bTranslateX boolean @If true take the spring calculation for translation in X
---@field bTranslateY boolean @If true take the spring calculation for translation in Y
---@field bTranslateZ boolean @If true take the spring calculation for translation in Z
---@field bRotateX boolean @If true take the spring calculation for rotation in X
---@field bRotateY boolean @If true take the spring calculation for rotation in Y
---@field bRotateZ boolean @If true take the spring calculation for rotation in Z
FAnimNode_SpringBone = {}
