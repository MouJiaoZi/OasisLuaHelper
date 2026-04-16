---@meta

---@class ESettingsDOF
---@field Full3D number @Allows for full 3D movement and rotation.
---@field YZPlane number @Allows 2D movement along the Y-Z plane.
---@field XZPlane number @Allows 2D movement along the X-Z plane.
---@field XYPlane number @Allows 2D movement along the X-Y plane.
ESettingsDOF = {}


---@class ESettingsLockedAxis
---@field None number @No axis is locked.
---@field X number @Lock movement along the x-axis.
---@field Y number @Lock movement along the y-axis.
---@field Z number @Lock movement along the z-axis.
---@field Invalid number @Used for backwards compatibility. Indicates that we've updated into the new struct.
ESettingsLockedAxis = {}


---Structure that represents the name of physical surfaces.
---@class FPhysicalSurfaceName
---@field Type EPhysicalSurface
---@field Name string
FPhysicalSurfaceName = {}


---Default physics settings.
---@class UPhysicsSettings: UDeveloperSettings
---@field ServerPvdThresholdMs number @Default ServerPvdThresholdMs.
---@field ClientPvdThresholdMs number @Default ClientPvdThresholdMs.
---@field ServerPvdRecordTimeSeconds number @Default ServerPvdRecordTimeSeconds.
---@field ClientPvdRecordTimeSeconds number @Default ClientPvdRecordTimeSeconds.
---@field DefaultGravityZ number @Default gravity.
---@field DefaultTerminalVelocity number @Default terminal velocity for Physics Volumes.
---@field DefaultFluidFriction number @Default fluid friction for Physics Volumes.
---@field SimulateScratchMemorySize number @Amount of memory to reserve for PhysX simulate(), this is per pxscene and will be rounded up to the next 16K boundary
---@field RagdollAggregateThreshold number @Threshold for ragdoll bodies above which they will be added to an aggregate before being added to the scene
---@field TriangleMeshTriangleMinAreaThreshold number @Triangles from triangle meshes (BSP) with an area less than or equal to this value will be removed from physics collision data. Set to less than 0 to disable.
---@field bEnableAsyncScene boolean @Enables the use of an async scene
---@field bEnableShapeSharing boolean @Enables shape sharing between sync and async scene for static rigid actors
---@field bEnablePCM boolean @Enables persistent contact manifolds. This will generate fewer contact points, but with more accuracy. Reduces stability of stacking, but can help energy conservation.
---@field bEnableStabilization boolean @Enables stabilization of contacts for slow moving bodies. This will help improve the stability of stacking.
---@field bWarnMissingLocks boolean @Whether to warn when physics locks are used incorrectly. Turning this off is not recommended and should only be used by very advanced users.
---@field bEnable2DPhysics boolean @Can 2D physics be used (Box2D)?
---@field PhysicErrorCorrection FRigidBodyErrorCorrectionNew @Error correction data for replicating simulated physics (rigid bodies)
---@field LockedAxis_DEPRECATED ESettingsLockedAxis
---@field DefaultDegreesOfFreedom ESettingsDOF @Useful for constraining all objects in the world, for example if you are making a 2D game using 3D environments.
---@field BounceThresholdVelocity number @Minimum relative velocity required for an object to bounce. A typical value for simulation stability is about 0.2 * gravity
---@field FrictionCombineMode EFrictionCombineMode @Friction combine mode, controls how friction is computed for multiple materials.
---@field RestitutionCombineMode EFrictionCombineMode @Restitution combine mode, controls how restitution is computed for multiple materials.
---@field MaxAngularVelocity number @Max angular velocity that a simulated object can achieve.
---@field MaxDepenetrationVelocity number @Max velocity which may be used to depenetrate simulated physics objects. 0 means no maximum.
---@field ContactOffsetMultiplier number @Contact offset multiplier. When creating a physics shape we look at its bounding volume and multiply its minimum value by this multiplier. A bigger number will generate contact points earlier which results in higher stability at the cost of performance.
---@field MinContactOffset number @Min Contact offset.
---@field MaxContactOffset number @Max Contact offset.
---@field bSimulateSkeletalMeshOnDedicatedServer boolean @If true, simulate physics for this component on a dedicated server. This should be set if simulating physics and replicating with a dedicated server.
---@field DefaultShapeComplexity ECollisionTraceFlag @Determines the default physics shape complexity.
---@field bDefaultHasComplexCollision_DEPRECATED boolean @If true, static meshes will use per poly collision as complex collision by default. If false the default behavior is the same as UseSimpleAsComplex.
---@field bSuppressFaceRemapTable boolean @If true, the internal physx face to UE face mapping will not be generated. This is a memory optimization available if you do not rely on face indices returned by scene queries.
---@field bSupportUVFromHitResults boolean @If true, store extra information to allow FindCollisionUV to derive UV info from a line trace hit result, using the FindCollisionUV utility
---@field bDisableActiveActors boolean @If true, physx will not update unreal with any bodies that have moved during the simulation. This should only be used if you have no physx simulation or you are manually updating the unreal data via polling physx.
---@field bDisableCCD boolean @If true CCD will be ignored. This is an optimization when CCD is never used which removes the need for physx to check it internally.
---@field bEnableEnhancedDeterminism boolean @If set to true, the scene will use enhanced determinism at the cost of a bit more resources. See eENABLE_ENHANCED_DETERMINISM to learn about the specifics
---@field MaxPhysicsDeltaTime number @Max Physics Delta Time to be clamped.
---@field bSubstepping boolean @Whether to substep the physics simulation. This feature is still experimental. Certain functionality might not work correctly
---@field bSubsteppingAsync boolean @Whether to substep the async physics simulation. This feature is still experimental. Certain functionality might not work correctly
---@field MaxSubstepDeltaTime number @Max delta time (in seconds) for an individual simulation substep.
---@field MaxSubsteps number @Max number of substeps for physics simulation.
---@field ServerMaxSubstepDeltaTime number @pixelchen 服务器单独设置MaxSubstepDeltaTime
---@field ServerMaxSubsteps number @pixelchen 服务器单独设置MaxSubsteps
---@field SyncSceneSmoothingFactor number @Physics delta time smoothing factor for sync scene.
---@field AsyncSceneSmoothingFactor number @Physics delta time smoothing factor for async scene.
---@field InitialAverageFrameRate number @Physics delta time initial average.
---@field PhysXTreeRebuildRate number @The number of frames it takes to rebuild the PhysX scene query AABB tree. The bigger the number, the smaller fetchResults takes per frame, but the more the tree deteriorates until a new tree is built
---@field PhysicalSurfaces ULuaArrayHelper<FPhysicalSurfaceName>
local UPhysicsSettings = {}
