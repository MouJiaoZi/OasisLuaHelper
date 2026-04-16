---@meta

---Supported angular constraint types
---@class AnimPhysAngularConstraintType_UE5
---@field Angular number
---@field Cone number
AnimPhysAngularConstraintType_UE5 = {}


---Supported linear axis constraints
---@class AnimPhysLinearConstraintType_UE5
---@field Free number
---@field Limited number
AnimPhysLinearConstraintType_UE5 = {}


---@class AnimPhysSimSpaceType_UE5
---@field Component number
---@field Actor number
---@field World number
---@field RootRelative number
---@field BoneRelative number
AnimPhysSimSpaceType_UE5 = {}


---Whether spheres keep bodies inside, or outside of their shape
---@class ESphericalLimitType_UE5
---@field Inner number
---@field Outer number
ESphericalLimitType_UE5 = {}


---Constraint setup struct, holds data required to build a physics constraint
---@class FAnimPhysConstraintSetup_UE5
---@field LinearXLimitType AnimPhysLinearConstraintType_UE5 @Whether to limit the linear X axis
---@field LinearYLimitType AnimPhysLinearConstraintType_UE5 @Whether to limit the linear Y axis
---@field LinearZLimitType AnimPhysLinearConstraintType_UE5 @Whether to limit the linear Z axis
---@field LinearAxesMin FVector @Minimum linear movement per-axis (Set zero here and in the max limit to lock)
---@field LinearAxesMax FVector @Maximum linear movement per-axis (Set zero here and in the min limit to lock)
---@field AngularConstraintType AnimPhysAngularConstraintType_UE5 @Method to use when constraining angular motion
---@field TwistAxis AnimPhysTwistAxis @Axis to consider for twist when constraining angular motion (forward axis)
---@field AngularTargetAxis AnimPhysTwistAxis @The axis in the simulation pose to align to the Angular Target. This is typically the axis pointing along the bone. Note: This is affected by the Angular Spring Constant.
---@field ConeAngle number @Angle to use when constraining using a cone
---@field AngularLimitsMin FVector @X-axis limit for angular motion when using the "Angular" constraint type (Set to 0 to lock, or 180 to remain free)
---@field AngularLimitsMax FVector
---@field AngularTarget FVector @The axis to align the angular spring constraint to in the animation pose. This typically points down the bone - so values of (1.0, 0.0, 0.0) are common, but you can pick other values to align the spring to a different direction. Note: This is affected by the Angular Spring Constant.
FAnimPhysConstraintSetup_UE5 = {}


---@class FAnimPhysPlanarLimit_UE5
---@field DrivingBone FBoneReference @When using a driving bone, the plane transform will be relative to the bone transform
---@field PlaneTransform FTransform @Transform of the plane, this is either in component-space if no DrivinBone is specified or in bone-space if a driving bone is present.
FAnimPhysPlanarLimit_UE5 = {}


---@class FAnimPhysSphericalLimit_UE5
---@field DrivingBone FBoneReference @Bone to attach the sphere to
---@field SphereLocalOffset FVector @Local offset for the sphere, if no driving bone is set this is in node space, otherwise bone space
---@field LimitRadius number @Radius of the sphere
---@field LimitType ESphericalLimitType_UE5 @Whether to lock bodies inside or outside of the sphere
FAnimPhysSphericalLimit_UE5 = {}


---@class FAnimPhysBodyDefinition_UE5
---@field BoundBone FBoneReference
---@field BoxExtents FVector @Extents of the box to use for simulation
---@field LocalJointOffset FVector @Vector relative to the body being simulated to attach the constraint to
---@field ConstraintSetup FAnimPhysConstraintSetup_UE5 @Data describing the constraints we will apply to the body
---@field CollisionType AnimPhysCollisionType @Resolution method for planar limits
---@field SphereCollisionRadius number @Radius to use if CollisionType is set to CustomSphere
FAnimPhysBodyDefinition_UE5 = {}


---@class FAnimNode_AnimDynamics_UE5
---@field LinearDampingOverride number @Overridden linear damping value. The default is 0.7. Values below 0.7 won't have an effect.
---@field AngularDampingOverride number @Overridden angular damping value. The default is 0.7. Values below 0.7 won't have an effect.
---@field RelativeSpaceBone FBoneReference @When in BoneRelative sim space, the simulation will use this bone as the origin
---@field BoundBone FBoneReference @The bone to attach the physics body to, if bChain is true this is the top of the chain
---@field ChainEnd FBoneReference @If bChain is true this is the bottom of the chain, otherwise ignored
---@field PhysicsBodyDefinitions ULuaArrayHelper<FAnimPhysBodyDefinition_UE5>
---@field GravityScale number @Scale for gravity, higher values increase forces due to gravity
---@field GravityOverride FVector @Gravity Override Value
---@field LinearSpringConstant number @Spring constant to use when calculating linear springs, higher values mean a stronger spring. You need to enable the Linear Spring checkbox for this to have an effect.
---@field AngularSpringConstant number @Spring constant to use when calculating angular springs, higher values mean a stronger spring. You need to enable the Angular Spring checkbox for this to have an effect. Note: Make sure to also set the Angular Target Axis and Angular Target in the Constraint Setup for this to have an effect.
---@field WindScale number @Scale to apply to calculated wind velocities in the solver
---@field ComponentLinearAccScale FVector @When using non-world-space sim, this controls how much of the components world-space acceleration is passed on to the local-space simulation.
---@field ComponentLinearVelScale FVector @When using non-world-space sim, this applies a 'drag' to the bodies in the local space simulation, based on the components world-space velocity.
---@field ComponentAppliedLinearAccClamp FVector @When using non-world-space sim, this is an overall clamp on acceleration derived from ComponentLinearAccScale and ComponentLinearVelScale, to ensure it is not too large.
---@field AngularBiasOverride number @Overridden angular bias value Angular bias is essentially a twist reduction for chain forces and defaults to a value to keep chains stability in check. When using single-body systems sometimes angular forces will look like they are "catching-up" with the mesh, if that's the case override this and push it towards 1.0f until it settles correctly
---@field NumSolverIterationsPreUpdate number @Number of update passes on the linear and angular limits before we solve the position of the bodies recommended to be four times the value of NumSolverIterationsPostUpdate
---@field NumSolverIterationsPostUpdate number @Number of update passes on the linear and angular limits after we solve the position of the bodies, recommended to be around a quarter of NumSolverIterationsPreUpdate
---@field SphericalLimits ULuaArrayHelper<FAnimPhysSphericalLimit_UE5> @List of available spherical limits for this node
---@field ExternalForce FVector @An external force to apply to all bodies in the simulation when ticked, specified in world space
---@field PlanarLimits ULuaArrayHelper<FAnimPhysPlanarLimit_UE5> @List of available planar limits for this node
---@field SimulationSpace AnimPhysSimSpaceType_UE5 @The space used to run the simulation
---@field bUseSphericalLimits number @Whether to evaluate spherical limits
---@field bUsePlanarLimit number @Whether to evaluate planar limits
---@field bDoUpdate number @If true we will perform physics update, otherwise skip - allows visualization of the initial state of the bodies
---@field bDoEval number @If true we will perform bone transform evaluation, otherwise skip - allows visualization of the initial anim state compared to the physics sim
---@field bOverrideLinearDamping number @If true, the override value will be used for linear damping
---@field bOverrideAngularBias number @If true, the override value will be used for the angular bias for bodies in this node. Angular bias is essentially a twist reduction for chain forces and defaults to a value to keep chains stability in check. When using single-body systems sometimes angular forces will look like they are "catching-up" with the mesh, if that's the case override this and push it towards 1.0f until it settles correctly
---@field bOverrideAngularDamping number @If true, the override value will be used for angular damping
---@field bEnableWind number @Whether or not wind is enabled for the bodies in this simulation
---@field bUseGravityOverride number @Use gravity override value vs gravity scale
---@field bGravityOverrideInSimSpace number @If true the gravity override value is defined in simulation space, by default it is in world space
---@field bLinearSpring number @If true the body will attempt to spring back to its initial position
---@field bAngularSpring number @If true the body will attempt to align itself with the specified angular target
---@field bChain number @Set to true to use the solver to simulate a connected chain
FAnimNode_AnimDynamics_UE5 = {}
