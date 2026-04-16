---@meta

---Per foot definitions
---@class FAnimLegIKDefinition
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field NumBonesInLimb number
---@field FootBoneForwardAxis EAxis @Forward Axis for Foot bone.
---@field bEnableRotationLimit boolean @If enabled, we prevent the leg from bending backwards and enforce a min compression angle
---@field MinRotationAngle number @Only used if bEnableRotationLimit is enabled. Prevents the leg from folding onto itself, and forces at least this angle between Parent and Child bone.
---@field bEnableKneeTwistCorrection boolean @Enable Knee Twist correction, by comparing Foot FK with Foot IK orientation.
FAnimLegIKDefinition = {}


---Runtime foot data after validation, we guarantee these bones to exist
---@class FAnimLegIKData
FAnimLegIKData = {}


---@class FIKChainLink
FIKChainLink = {}


---@class FIKChain
FIKChain = {}


---@class FAnimNode_LegIK
---@field ReachPrecision number @Tolerance for reaching IK Target, in unreal units.
---@field MaxIterations number @Max Number of Iterations.
---@field LegsDefinition ULuaArrayHelper<FAnimLegIKDefinition>
---@field LegsData ULuaArrayHelper<FAnimLegIKData>
FAnimNode_LegIK = {}
