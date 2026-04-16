---@meta

---Controller that simulates physics based on the physics asset of the skeletal mesh component
---@class FAnimNode_RigidBody
---@field LastUsePhysicsAsset UPhysicsAsset
---@field OverrideWorldGravity FVector @Override gravity
---@field ExternalForce FVector @Applies a uniform external force in world space. This allows for easily faking inertia of movement while still simulating in component space for example
---@field OverlapChannel ECollisionChannel @The channel we use to find static geometry to collide with
---@field bEnableWorldGeometry boolean
---@field SimulationSpace ESimulationSpace @What space to simulate the bodies in. This affects how velocities are generated
---@field bOverrideWorldGravity boolean
---@field CachedBoundsScale number @Scale of cached bounds (vs. actual bounds). Increasing this may improve performance, but overlaps may not work as well. (A value of 1.0 effectively disables cached bounds).
---@field bUseCompPhysicsAssetWhenNotSet boolean
---@field bUseIntersectDetect boolean
---@field bUseMultipleRigidBodyNodeInitDelay boolean
---@field bComponentSpaceSimulation_DEPRECATED boolean
---@field BoneShiftTolerenceChecker FAnimNodeBoneShiftTolerenceChecker @Bone Shift Tolerence Check Start
FAnimNode_RigidBody = {}
