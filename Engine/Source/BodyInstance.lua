---@meta

---@class EDOFMode
---@field Default number
---@field SixDOF number
---@field YZPlane number
---@field XZPlane number
---@field XYPlane number
---@field CustomPlane number
---@field None number
EDOFMode = {}


---Whether to override the sync/async scene used by a dynamic actor
---@class EDynamicActorScene
---@field Default number
---@field UseSyncScene number
---@field UseAsyncScene number
EDynamicActorScene = {}


---@class FCollisionResponse
---@field ResponseToChannels FCollisionResponseContainer @Types of objects that this physics objects will collide with.
---@field ResponseArray ULuaArrayHelper<FResponseChannel> @Custom Channels for Responses
FCollisionResponse = {}


---Container for a physics representation of an object
---@class FBodyInstance
---@field SleepFamily ESleepFamily @The set of values used in considering when put this body to sleep.
---@field DOFMode EDOFMode @Locks physical movement along specified axis.
---@field CollisionEnabled ECollisionEnabled @Type of collision enabled. No Collision      : Will not create any representation in the physics engine. Cannot be used for spatial queries (raycasts, sweeps, overlaps) or simulation (rigid body, constraints). Best performance possible (especially for moving objects) Query Only        : Only used for spatial queries (raycasts, sweeps, and overlaps). Cannot be used for simulation (rigid body, constraints). Useful for character movement and things that do not need physical simulation. Performance gains by keeping data out of simulation tree. Physics Only      : Only used only for physics simulation (rigid body, constraints). Cannot be used for spatial queries (raycasts, sweeps, overlaps). Useful for jiggly bits on characters that do not need per bone detection. Performance gains by keeping data out of query tree Collision Enabled : Can be used for both spatial queries (raycasts, sweeps, overlaps) and simulation (rigid body, constraints).
---@field CollisionProfileName string @Collision Profile Name *
---@field CollisionResponses any @Custom Channels for Responses
---@field bUseCCD number @If true Continuous Collision Detection (CCD) will be used for this component
---@field bNotifyRigidBodyCollision number @Should 'Hit' events fire when this object collides during physics simulation.
---@field bUseShapeCollisionOverride number @PhysicsAsset中有bCollisionPerShape功能，载具中经常用到。 在使用这个功能时，如果运行时调用了UpdatePhysicsShapeFilterData，shape的flag会被改写为组件中的配置，即bCollisionPerShape功能无效了。 这里增加一个开关，如果为true，在UpdatePhysicsShapeFilterData时也会去应用PA的bCollisionPerShape功能。	-lyonarzhang
---@field bSimulatePhysics number @If true, this body will use simulation. If false, will be 'fixed' (ie kinematic) and move where it is told. For a Skeletal Mesh Component, simulating requires a physics asset setup and assigned on the SkeletalMesh asset. For a Static Mesh Component, simulating requires simple collision to be setup on the StaticMesh asset.
---@field bOverrideMass number @If true, mass will not be automatically computed and you must set it directly
---@field bEnableGravity number @If object should have the force of gravity applied
---@field bAutoWeld number @If true and is attached to a parent, the two bodies will be joined into a single rigid body. Physical settings like collision profile and body settings are determined by the root
---@field bStartAwake number @If object should start awake, or if it should initially be sleeping
---@field bGenerateWakeEvents number @Should 'wake/sleep' events fire when this object is woken up or put to sleep by the physics simulation.
---@field bUpdateMassWhenScaleChanges number @If true, it will update mass when scale changes *
---@field bLockTranslation number @When a Locked Axis Mode is selected, will lock translation on the specified axis
---@field bLockRotation number @When a Locked Axis Mode is selected, will lock rotation to the specified axis
---@field bLockXTranslation number @Lock translation along the X-axis
---@field bLockYTranslation number @Lock translation along the Y-axis
---@field bLockZTranslation number @Lock translation along the Z-axis
---@field bLockXRotation number @Lock rotation about the X-axis
---@field bLockYRotation number @Lock rotation about the Y-axis
---@field bLockZRotation number @Lock rotation about the Z-axis
---@field bOverrideMaxAngularVelocity number @Override the default max angular velocity
---@field bUseAsyncScene number @If true, this body will be put into the asynchronous physics scene. If false, it will be put into the synchronous physics scene. If the body is static, it will be placed into both scenes regardless of the value of bUseAsyncScene.
---@field bOverrideMaxDepenetrationVelocity number @Whether this body instance has its own custom MaxDepenetrationVelocity
---@field bOverrideWalkableSlopeOnInstance number @Whether this instance of the object has its own custom walkable slope override setting.
---@field MaxDepenetrationVelocity number @The maximum velocity used to depenetrate this object
---@field MassInKgOverride number @Mass of the body in KG. By default we compute this based on physical material and mass scale.
---@field LinearDamping number @'Drag' force added to reduce linear movement
---@field AngularDamping number @'Drag' force added to reduce angular movement
---@field CustomDOFPlaneNormal FVector @Locks physical movement along a custom plane for a given normal.
---@field COMNudge FVector @User specified offset for the center of mass of this object, from the calculated location
---@field bUseOverrideCOM boolean @为true时，锁定重心位置为OverrideCOM(Component space)，只对载具有效
---@field OverrideCOM FVector
---@field MassScale number @Per-instance scaling of mass
---@field InertiaTensorScale FVector @Per-instance scaling of inertia (bigger number means  it'll be harder to rotate)
---@field bUsedPhysSimpleStaticMesh number
---@field ObjectType ECollisionChannel @Enum indicating what type of object this should be considered as when it moves
---@field WalkableSlopeOverride any @Custom walkable slope override setting for this instance.
---@field MaxAngularVelocity number @The maximum angular velocity for this instance
---@field CustomSleepThresholdMultiplier number @If the SleepFamily is set to custom, multiply the natural sleep threshold by this amount. A higher number will cause the body to sleep sooner.
---@field StabilizationThresholdMultiplier number @Stabilization factor for this body if Physics stabilization is enabled. A higher number will cause more aggressive stabilization at the risk of loss of momentum at low speeds. A value of 0 will disable stabilization for this body.
---@field PhysicsBlendWeight number @Provide appropriate interface for doing this instead of allowing BlueprintReadWrite *
---@field PositionSolverIterationCount number @This physics body's solver iteration count for position. Increasing this will be more CPU intensive, but better stabilized.
---@field VelocitySolverIterationCount number @This physics body's solver iteration count for velocity. Increasing this will be more CPU intensive, but better stabilized.
FBodyInstance = {}


---Delegate for applying custom physics forces upon the body. Can be passed to "AddCustomPhysics" so custom forces and torques can be calculated individually for every physics substep. The function provides delta time for a physics step and pointer to body instance upon which forces must be added. Do not expect this callback to be called from the main game thread! It may get called from a physics simulation thread.
---@class FCalculateCustomPhysics : ULuaSingleDelegate
FCalculateCustomPhysics = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: number, Param2: FBodyInstance) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCalculateCustomPhysics:Bind(Callback, Obj) end

---执行委托
---@param Param1 number
---@param Param2 FBodyInstance
function FCalculateCustomPhysics:Execute(Param1, Param2) end


---Delegate for applying custom physics projection upon the body. When this is set for the body instance, it will be called whenever component transformation is requested from the physics engine. If projection is required (for example, visual position of an object must be different to the one in physics engine, e.g. the box should not penetrate the wall visually) the transformation of body must be updated to account for it. Since this could be called many times by GetWorldTransform any expensive computations should be cached if possible.
---@class FCalculateCustomProjection : ULuaSingleDelegate
FCalculateCustomProjection = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FBodyInstance, Param2: FTransform) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCalculateCustomProjection:Bind(Callback, Obj) end

---执行委托
---@param Param1 FBodyInstance
---@param Param2 FTransform
function FCalculateCustomProjection:Execute(Param1, Param2) end


---Delegate for when the mass properties of a body instance have been re-calculated. This can be useful for systems that need to set specific physx settings on actors, or systems that rely on the mass information in some way
---@class FRecalculatedMassProperties : ULuaMulticastDelegate
FRecalculatedMassProperties = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FBodyInstance) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRecalculatedMassProperties:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FBodyInstance
function FRecalculatedMassProperties:Broadcast(Param1) end


---UpdatePhysicsFilterData中调用，用于一些对物理shape的filter或者flag的特殊修改
---@class FUpdatePhysicsFilterData : ULuaMulticastDelegate
FUpdatePhysicsFilterData = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FBodyInstance) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUpdatePhysicsFilterData:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FBodyInstance
function FUpdatePhysicsFilterData:Broadcast(Param1) end


---UpdatePhysicalMaterials中调用，用于对物理shape的物理材质特殊修改
---@class FUpdatePhysicalMaterials : ULuaMulticastDelegate
FUpdatePhysicalMaterials = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FBodyInstance) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUpdatePhysicalMaterials:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FBodyInstance
function FUpdatePhysicalMaterials:Broadcast(Param1) end
