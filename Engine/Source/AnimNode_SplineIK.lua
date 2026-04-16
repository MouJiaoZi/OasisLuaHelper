---@meta

---The different axes we can align our bones to. Note that the values are set to match up with EAxis (but without 'None')
---@class ESplineBoneAxis
---@field X number
---@field Y number
---@field Z number
ESplineBoneAxis = {}


---Data cached per bone in the chain
---@class FSplineIKCachedBoneData
---@field Bone FBoneReference @The bone we refer to
---@field RefSkeletonIndex number @Index of the bone in the reference skeleton
FSplineIKCachedBoneData = {}


---@class FAnimNode_SplineIK
---@field StartBone FBoneReference @Name of root bone from which the spline extends *
---@field EndBone FBoneReference @Name of bone at the end of the spline chain. Bones after this will not be altered by the controller.
---@field BoneAxis ESplineBoneAxis @Axis of the controlled bone (ie the direction of the spline) to use as the direction for the curve.
---@field bAutoCalculateSpline boolean @The number of points in the spline if we are specifying it directly
---@field PointCount number @The number of points in the spline if we are not auto-calculating
---@field ControlPoints ULuaArrayHelper<FTransform> @Transforms applied to spline points *
---@field Roll number @Overall roll of the spline, applied on top of other rotations along the direction of the spline
---@field TwistStart number @The twist of the start bone. Twist is interpolated along the spline according to Twist Blend.
---@field TwistEnd number @The twist of the end bone. Twist is interpolated along the spline according to Twist Blend.
---@field TwistBlend FAlphaBlend @How to interpolate twist along the length of the spline
---@field Stretch number @The maximum stretch allowed when fitting bones to the spline. 0.0 means bones do not stretch their length, 1.0 means bones stretch to the length of the spline
---@field Offset number @The distance along the spline from the start from which bones are constrained
---@field BoneSpline FSplineCurves @Spline we maintain internally
---@field OriginalSplineLength number @Cached spline length from when the spline was originally applied to the skeleton
---@field CachedBoneReferences ULuaArrayHelper<FSplineIKCachedBoneData> @Cached data for bones in the IK chain, from start to end
---@field CachedBoneLengths ULuaArrayHelper<number> @Cached bone lengths. Same size as CachedBoneReferences
---@field CachedOffsetRotations ULuaArrayHelper<FQuat> @Cached bone offset rotations. Same size as CachedBoneReferences
FAnimNode_SplineIK = {}
