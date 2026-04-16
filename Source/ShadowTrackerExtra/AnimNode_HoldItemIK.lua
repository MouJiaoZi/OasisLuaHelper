---@meta

---给定参考Pose、目标骨骼和参考骨骼，将输入Pose的目标骨骼通过IK移动，使得目标骨骼相对参考骨骼的位置朝向与参考Pose中一致 通常用于让手握住交互物品，此时美术给出正确交互的动画作为参考Pose，目标骨骼是手部骨骼，参考骨骼是物品骨骼
---@class FAnimNode_HoldItemIK
---@field StandardPose FComponentSpacePoseLink
---@field TargetBone FBoneReference
---@field ItemBone FBoneReference
---@field IKRootBone FBoneReference
---@field FabrikIKNode FAnimNode_Fabrik
FAnimNode_HoldItemIK = {}
