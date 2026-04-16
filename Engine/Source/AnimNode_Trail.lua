---@meta

---Trail Controller
---@class FAnimNode_Trail
---@field TrailBone FBoneReference @Reference to the active bone in the hierarchy to modify.
---@field ChainLength number @Number of bones above the active one in the hierarchy to modify. ChainLength should be at least 2.
---@field ChainBoneAxis EAxis @Axis of the bones to point along trail.
---@field bInvertChainBoneAxis boolean @Invert the direction specified in ChainBoneAxis.
---@field TrailRelaxation_DEPRECATED number @How quickly we 'relax' the bones to their animated positions. Deprecated. Replaced to TrailRelaxationCurve
---@field TrailRelaxationSpeed FRuntimeFloatCurve @How quickly we 'relax' the bones to their animated positions. Time 0 will map to top root joint, time 1 will map to the bottom joint.
---@field bLimitStretch boolean @Limit the amount that a bone can stretch from its ref-pose length.
---@field StretchLimit number @If bLimitStretch is true, this indicates how long a bone can stretch beyond its length in the ref-pose.
---@field FakeVelocity FVector @'Fake' velocity applied to bones.
---@field bActorSpaceFakeVel boolean @Whether 'fake' velocity should be applied in actor or world space.
---@field BaseJoint FBoneReference @Base Joint to calculate velocity from. If none, it will use Component's World Transform. .
FAnimNode_Trail = {}
