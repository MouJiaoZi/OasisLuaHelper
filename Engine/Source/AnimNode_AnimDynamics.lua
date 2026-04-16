---@meta

---Supported angular constraint types
---@class AnimPhysAngularConstraintType
---@field Angular number
---@field Cone number
AnimPhysAngularConstraintType = {}


---Supported linear axis constraints
---@class AnimPhysLinearConstraintType
---@field Free number
---@field Limited number
AnimPhysLinearConstraintType = {}


---@class AnimPhysSimSpaceType
---@field Component number
---@field Actor number
---@field World number
---@field RootRelative number
---@field BoneRelative number
AnimPhysSimSpaceType = {}


---Whether spheres keep bodies inside, or outside of their shape
---@class ESphericalLimitType
---@field Inner number
---@field Outer number
ESphericalLimitType = {}


---Constraint setup struct, holds data required to build a physics constraint
---@class FAnimPhysConstraintSetup
---@field LinearXLimitType AnimPhysLinearConstraintType @Whether to limit the linear X axis
---@field LinearYLimitType AnimPhysLinearConstraintType @Whether to limit the linear Y axis
---@field LinearZLimitType AnimPhysLinearConstraintType @Whether to limit the linear Z axis
---@field LinearAxesMin FVector @Minimum linear movement per-axis (Set zero here and in the max limit to lock)
---@field LinearAxesMax FVector @Maximum linear movement per-axis (Set zero here and in the min limit to lock)
---@field AngularConstraintType AnimPhysAngularConstraintType @Method to use when constraining angular motion
---@field TwistAxis AnimPhysTwistAxis @Axis to consider for twist when constraining angular motion (forward axis)
---@field ConeAngle number @Angle to use when constraining using a cone
---@field AngularXAngle_DEPRECATED number @X-axis limit for angular motion when using the "Angular" constraint type (Set to 0 to lock, or 180 to remain free)
---@field AngularYAngle_DEPRECATED number @Y-axis limit for angular motion when using the "Angular" constraint type (Set to 0 to lock, or 180 to remain free)
---@field AngularZAngle_DEPRECATED number @Z-axis limit for angular motion when using the "Angular" constraint type (Set to 0 to lock, or 180 to remain free)
---@field AngularLimitsMin FVector
---@field AngularLimitsMax FVector
---@field AngularTargetAxis AnimPhysTwistAxis @Axis on body1 to match to the angular target direction.
---@field AngularTarget FVector @Target direction to face for body1 (in body0 local space)
---@field bLinearFullyLocked boolean @If all axes are locked we can use 3 linear limits instead of the 6 needed for limited axes
FAnimPhysConstraintSetup = {}


---@class FAnimPhysPlanarLimit
---@field DrivingBone FBoneReference @When using a driving bone, the plane transform will be relative to the bone transform
---@field PlaneTransform FTransform @Transform of the plane, this is either in component-space if no DrivinBone is specified or in bone-space if a driving bone is present.
---@field IsEnabled boolean
FAnimPhysPlanarLimit = {}


---@class FAnimPhysSphericalLimit
---@field DrivingBone FBoneReference @Bone to attach the sphere to
---@field SphereLocalOffset FVector @Local offset for the sphere, if no driving bone is set this is in node space, otherwise bone space
---@field LimitRadius number @Radius of the sphere
---@field LimitType ESphericalLimitType @Whether to lock bodies inside or outside of the sphere
---@field IsEnabled boolean
FAnimPhysSphericalLimit = {}


---@class FAnimNode_AnimDynamics
---@field bUseLazyChange boolean
---@field LazyChangeInterval number
---@field bLazySimulate_Location boolean
---@field bLazySimulate_Location_OnlyRoot boolean
---@field LazySimulateAlpha_Location number
---@field bLazySimulate_Rotation boolean
---@field bLazySimulate_Rotation_OnlyRoot boolean
---@field LazySimulateAlpha_Rotation number
---@field SimulationSpace AnimPhysSimSpaceType @The space used to run the simulation
---@field RelativeSpaceBone FBoneReference @When in BoneRelative sim space, the simulation will use this bone as the origin
---@field bChain boolean @Set to true to use the solver to simulate a connected chain
---@field BoundBone FBoneReference @The bone to attach the physics body to, if bChain is true this is the top of the chain
---@field ChainEnd FBoneReference @If bChain is true this is the bottom of the chain, otherwise ignored
---@field BoxExtents FVector @Extents of the box to use for simulation
---@field LocalJointOffset FVector @Vector relative to the body being simulated to attach the constraint to
---@field OldLocalJointOffset FVector
---@field GravityScale number @Scale for gravity, higher values increase forces due to gravity
---@field bLinearSpring boolean @If true the body will attempt to spring back to its initial position
---@field bAngularSpring boolean @If true the body will attempt to align itself with the specified angular target
---@field LinearSpringConstant number @Spring constant to use when calculating linear springs, higher values mean a stronger spring.
---@field AngularSpringConstant number @Spring constant to use when calculating angular springs, higher values mean a stronger spring
---@field bEnableWind boolean @Whether or not wind is enabled for the bodies in this simulation
---@field bWindWasEnabled boolean
---@field WindScale number @Scale to apply to calculated wind velocities in the solver
---@field bOverrideLinearDamping boolean @If true, the override value will be used for linear damping
---@field LinearDampingOverride number @Overridden linear damping value
---@field bOverrideAngularDamping boolean @If true, the override value will be used for angular damping
---@field AngularDampingOverride number @Overridden angular damping value
---@field bOverrideAngularBias boolean @If true, the override value will be used for the angular bias for bodies in this node. Angular bias is essentially a twist reduction for chain forces and defaults to a value to keep chains stability in check. When using single-body systems sometimes angular forces will look like they are "catching-up" with the mesh, if that's the case override this and push it towards 1.0f until it settles correctly
---@field AngularBiasOverride number @Overridden angular bias value Angular bias is essentially a twist reduction for chain forces and defaults to a value to keep chains stability in check. When using single-body systems sometimes angular forces will look like they are "catching-up" with the mesh, if that's the case override this and push it towards 1.0f until it settles correctly
---@field bDoUpdate boolean @If true we will perform physics update, otherwise skip - allows visualisation of the initial state of the bodies
---@field bDoEval boolean @If true we will perform bone transform evaluation, otherwise skip - allows visualisation of the initial anim state compared to the physics sim
---@field NumSolverIterationsPreUpdate number @Number of update passes on the linear and angular limits before we solve the position of the bodies recommended to be four times the value of NumSolverIterationsPostUpdate
---@field NumSolverIterationsPostUpdate number @Number of update passes on the linear and angular limits after we solve the position of the bodies, recommended to be around a quarter of NumSolverIterationsPreUpdate
---@field ConstraintSetup FAnimPhysConstraintSetup @Data describing the constraints we will apply to the body
---@field bUseDynamicAngularLimits boolean @if set, will use Dynamic_AngularLimits as ConstraintSetup.AngularLimits when UpdateLimits
---@field Dynamic_AngularLimitsMin FVector @if bUseDynamicAngularLimits set, will use Dynamic_AngularLimitsMin as ConstraintSetup.AngularLimitsMin when UpdateLimits
---@field Dynamic_AngularLimitsMax FVector @if bUseDynamicAngularLimits set, will use Dynamic_AngularLimitsMax as ConstraintSetup.AngularLimitsMax when UpdateLimits
---@field bUsePlanarLimit boolean @Whether to evaluate planar limits
---@field PlanarLimits ULuaArrayHelper<FAnimPhysPlanarLimit> @List of available planar limits for this node
---@field bUseSphericalLimits boolean @Whether to evaluate spherical limits
---@field SphericalLimits ULuaArrayHelper<FAnimPhysSphericalLimit> @List of available spherical limits for this node
---@field CollisionType AnimPhysCollisionType @Resolution method for planar limits
---@field SphereCollisionRadius number @Radius to use if CollisionType is set to CustomSphere
---@field NonEvaluateFrameNum number
---@field ExternalForce FVector @An external force to apply to all bodies in the simulation when ticked, specified in world space
---@field BoneShiftTolerenceChecker FAnimNodeBoneShiftTolerenceChecker @Bone Shift Tolerence Check Start
FAnimNode_AnimDynamics = {}
