---@meta

---@class EPoseDriverType
---@field SwingAndTwist number
---@field SwingOnly number
---@field Translation number
EPoseDriverType = {}


---Transform aspect used to drive interpolation
---@class EPoseDriverSource
---@field Rotation number @Drive using rotation
---@field Translation number @Driver using translation
EPoseDriverSource = {}


---Options for what PoseDriver should be driving
---@class EPoseDriverOutput
---@field DrivePoses number @Use target's DrivenName to drive poses from the assigned PoseAsset
---@field DriveCurves number @Use the target's DrivenName to drive curves
EPoseDriverOutput = {}


---Translation and rotation for a particular bone at a particular target
---@class FPoseDriverTransform
---@field TargetTranslation FVector @Translation of this target
---@field TargetRotation FRotator @Rotation of this target
FPoseDriverTransform = {}


---Information about each target in the PoseDriver
---@class FPoseDriverTarget
---@field BoneTransforms ULuaArrayHelper<FPoseDriverTransform> @Translation of this target
---@field TargetRotation FRotator @Rotation of this target
---@field TargetScale number @Scale applied to this target's function - a larger value will activate this target sooner
---@field bApplyCustomCurve boolean @If we should apply a custom curve mapping to how this target activates
---@field CustomCurve FRichCurve @Custom curve mapping to apply if bApplyCustomCurve is true
---@field DrivenName string @Name of item to drive - depends on DriveOutput setting. If DriveOutput is DrivePoses, this should be the name of a pose in the assigned PoseAsset If DriveOutput is DriveCurves, this is the name of the curve (morph target, material param etc) to drive
FPoseDriverTarget = {}


---RBF based orientation driver
---@class FAnimNode_PoseDriver
---@field SourcePose FPoseLink @Bones to use for driving parameters based on their transform
---@field SourceBones ULuaArrayHelper<FBoneReference> @Bone to use for driving parameters based on its orientation
---@field bOnlyDriveSelectedBones boolean @If we should filter bones to be driven using the DrivenBonesFilter array
---@field OnlyDriveBones ULuaArrayHelper<FBoneReference> @If bFilterDrivenBones is specified, only these bones will be modified by this node
---@field EvalSpaceBone FBoneReference @Optional other bone space to use when reading SourceBone transform. If not specified, we just use local space of SourceBone (ie relative to parent bone)
---@field RBFParams FRBFParams @Parameters used by RBF solver
---@field DriveSource EPoseDriverSource @Which part of the transform is read
---@field DriveOutput EPoseDriverOutput @Whether we should drive poses or curves
---@field PoseTargets ULuaArrayHelper<FPoseDriverTarget> @Targets used to compare with current pose and drive morphs/poses
---@field SourceBone_DEPRECATED FBoneReference
---@field TwistAxis_DEPRECATED EBoneAxis
---@field Type_DEPRECATED EPoseDriverType
---@field RadialScaling_DEPRECATED number
FAnimNode_PoseDriver = {}
