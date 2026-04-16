---@meta

---Determines in what space the simulation should run
---@class ESimulationSpace_UE5
---@field ComponentSpace number @Simulate in component space. Moving the entire skeletal mesh will have no affect on velocities
---@field WorldSpace number @Simulate in world space. Moving the skeletal mesh will generate velocity changes
---@field BaseBoneSpace number @Simulate in another bone space. Moving the entire skeletal mesh and individually modifying the base bone will have no affect on velocities
ESimulationSpace_UE5 = {}


---Settings for the system which passes motion of the simulation's space into the simulation. This allows the simulation to pass a fraction of the world space motion onto the bodies which allows Bone-Space and Component-Space simulations to react to world-space movement in a controllable way.
---@class FSimSpaceSettings
---@field MasterAlpha number
---@field VelocityScaleZ number
---@field MaxLinearVelocity number
---@field MaxAngularVelocity number
---@field MaxLinearAcceleration number
---@field MaxAngularAcceleration number
---@field ExternalLinearDrag_DEPRECATED number
---@field ExternalLinearDragV FVector
---@field ExternalLinearVelocity FVector
---@field ExternalAngularVelocity FVector
FSimSpaceSettings = {}


---Controller that simulates physics based on the physics asset of the skeletal mesh component
---@class FAnimNode_RigidBody_UE5
---@field OverrideWorldGravity FVector @Override gravity
---@field ExternalForce FVector @Applies a uniform external force in world space. This allows for easily faking inertia of movement while still simulating in component space for example
---@field ComponentLinearAccScale FVector @When using non-world-space sim, this controls how much of the components world-space acceleration is passed on to the local-space simulation.
---@field ComponentLinearVelScale FVector @When using non-world-space sim, this applies a 'drag' to the bodies in the local space simulation, based on the components world-space velocity.
---@field ComponentAppliedLinearAccClamp FVector @When using non-world-space sim, this is an overall clamp on acceleration derived from ComponentLinearAccScale and ComponentLinearVelScale, to ensure it is not too large.
---@field SimSpaceSettings FSimSpaceSettings @Settings for the system which passes motion of the simulation's space into the simulation. This allows the simulation to pass a fraction of the world space motion onto the bodies which allows Bone-Space and Component-Space simulations to react to world-space movement in a controllable way. This system is a superset of the functionality provided by ComponentLinearAccScale, ComponentLinearVelScale, and ComponentAppliedLinearAccClamp. In general you should not have both systems enabled.
---@field CachedBoundsScale number @Scale of cached bounds (vs. actual bounds). Increasing this may improve performance, but overlaps may not work as well. (A value of 1.0 effectively disables cached bounds).
---@field BaseBoneRef FBoneReference @Matters if SimulationSpace is BaseBone
---@field OverlapChannel ECollisionChannel @The channel we use to find static geometry to collide with
---@field SimulationSpace ESimulationSpace_UE5 @What space to simulate the bodies in. This affects how velocities are generated
---@field bForceDisableCollisionBetweenConstraintBodies boolean @Whether to allow collisions between two bodies joined by a constraint
---@field bEnableWorldGeometry number
---@field bOverrideWorldGravity number
---@field bTransferBoneVelocities number @When simulation starts, transfer previous bone velocities (from animation) to make transition into simulation seamless.
---@field bFreezeIncomingPoseOnStart number @When simulation starts, freeze incoming pose. This is useful for ragdolls, when we want the simulation to take over. It prevents non simulated bones from animating.
---@field bClampLinearTranslationLimitToRefPose number @Correct for linear tearing on bodies with all axes Locked. This only works if all axes linear translation are locked
---@field WorldSpaceMinimumScale number @For world-space simulations, if the magnitude of the component's 3D scale is less than WorldSpaceMinimumScale, do not update the node.
---@field EvaluationResetTime number @If the node is not evaluated for this amount of time (seconds), either because a lower LOD was in use for a while or the component was not visible, reset the simulation to the default pose on the next evaluation. Set to 0 to disable time-based reset.
FAnimNode_RigidBody_UE5 = {}
