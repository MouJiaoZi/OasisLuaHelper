---@meta

---For Bone Retarget Mesh Shift Feature Start *************************************************************
---@class EMeshShiftCompensationType
---@field EMSCT_None number
---@field EMSCT_X number @Axis_X
---@field EMSCT_Y number @Axis_Y
---@field EMSCT_Z number @Axis_Z
---@field EMSCT_XY number @Axis_XY
---@field EMSCT_XZ number @Axis_XZ
---@field EMSCT_YZ number @Axis_YZ
---@field EMSCT_XYZ number @Axis_XYZ
EMeshShiftCompensationType = {}


---This enum defines how you'd like to update bones to physics world. If bone is simulating, you don't have to waste time on updating bone transform from kinematic. But also sometimes you don't like fixed bones to be updated by animation data.
---@class EKinematicBonesUpdateToPhysics
---@field SkipSimulatingBones number @Update any bones that are not simulating.
---@field SkipAllBones number @Skip physics update from kinematic changes.
EKinematicBonesUpdateToPhysics = {}


---@class EAnimationMode
---@field AnimationBlueprint number @Use Animation Blueprint
---@field AnimationSingleNode number @Use Animation Asset
---@field AnimationCustomMode number @Use Custom Mode
EAnimationMode = {}


---@class EPhysicsTransformUpdateMode
---@field SimulationUpatesComponentTransform number
---@field ComponentTransformIsKinematic number
EPhysicsTransformUpdateMode = {}


---@class FMeshShiftParam
---@field bOverride_MeshShiftAnchorRefBone boolean
---@field MeshShiftAnchorRefBone string
FMeshShiftParam = {}


---@class FDelayInitAnimTickParam
---@field DeltaTime number
---@field bNeedsValidRootMotion boolean
---@field bUpdateProx boolean
---@field bForceUpdateProx boolean
FDelayInitAnimTickParam = {}


---Tick function that does post physics work on skeletal mesh component. This executes in EndPhysics (after physics is done)
---@class FSkeletalMeshComponentEndPhysicsTickFunction
FSkeletalMeshComponentEndPhysicsTickFunction = {}


---Tick function that prepares and simulates cloth
---@class FSkeletalMeshComponentClothTickFunction
FSkeletalMeshComponentClothTickFunction = {}


---@class FMaterialBatchInfo
---@field AtlasTextures ULuaMapHelper<ETextureType, UDynamicAtlasTexture2D>
FMaterialBatchInfo = {}


---@class FDynamicBatchSectionInfo
---@field TransientMatInfo ULuaArrayHelper<FMaterialBatchInfo>
---@field BatchMatList ULuaArrayHelper<UMaterialInterface>
---@field CacheAtlasMaterials ULuaMapHelper<number, UMaterialInstanceDynamic>
FDynamicBatchSectionInfo = {}


---@class FOnSkelMeshPhysicsCreatedMultiCast : ULuaSingleDelegate
FOnSkelMeshPhysicsCreatedMultiCast = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSkelMeshPhysicsCreatedMultiCast:Bind(Callback, Obj) end

---执行委托
function FOnSkelMeshPhysicsCreatedMultiCast:Execute() end


---@class FOnAnimInitialized : ULuaSingleDelegate
FOnAnimInitialized = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAnimInitialized:Bind(Callback, Obj) end

---执行委托
function FOnAnimInitialized:Execute() end


---@class FOnAnimClearScriptInstance : ULuaSingleDelegate
FOnAnimClearScriptInstance = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAnimClearScriptInstance:Bind(Callback, Obj) end

---执行委托
function FOnAnimClearScriptInstance:Execute() end


---@class FOnCompletePostAnimationEvaluationEnd : ULuaSingleDelegate
FOnCompletePostAnimationEvaluationEnd = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCompletePostAnimationEvaluationEnd:Bind(Callback, Obj) end

---执行委托
function FOnCompletePostAnimationEvaluationEnd:Execute() end


---@class FOnFinalizeBoneTransform : ULuaMulticastDelegate
FOnFinalizeBoneTransform = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InTargetSkelComp: USkeletalMeshComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFinalizeBoneTransform:Add(Callback, Obj) end

---触发 Lua 广播
---@param InTargetSkelComp USkeletalMeshComponent
function FOnFinalizeBoneTransform:Broadcast(InTargetSkelComp) end


---@class FOnSkeletalUpdateOverlaps : ULuaSingleDelegate
FOnSkeletalUpdateOverlaps = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSkeletalUpdateOverlaps:Bind(Callback, Obj) end

---执行委托
function FOnSkeletalUpdateOverlaps:Execute() end


---@class FOnSkelMeshTeleportedMultiCast : ULuaSingleDelegate
FOnSkelMeshTeleportedMultiCast = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSkelMeshTeleportedMultiCast:Bind(Callback, Obj) end

---执行委托
function FOnSkelMeshTeleportedMultiCast:Execute() end


---@class FMeshLODChangeDelegate : ULuaMulticastDelegate
FMeshLODChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InCurLOD: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMeshLODChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InCurLOD number
function FMeshLODChangeDelegate:Broadcast(InCurLOD) end


---SkeletalMeshComponent is used to create an instance of an animated SkeletalMesh asset.
---@class USkeletalMeshComponent: USkinnedMeshComponent, IInterface_CollisionDataProvider
---@field AnimationMode EAnimationMode @Whether to use Animation Blueprint or play Single Animation Asset.
---@field AnimClass any
---@field bAutoInitAnimInstance boolean
---@field SubInstances ULuaArrayHelper<UAnimInstance> @Any running sub anim instances that need to be updates on the game thread
---@field NewSubInstances ULuaArrayHelper<UAnimInstance>
---@field DirtySubInstances ULuaArrayHelper<UAnimInstance>
---@field StopTickSubInstances ULuaArrayHelper<UAnimInstance>
---@field AnimationData any
---@field CachedBoneSpaceTransforms ULuaArrayHelper<FTransform> @Cached BoneSpaceTransforms for Update Rate optimization.
---@field CachedComponentSpaceTransforms ULuaArrayHelper<FTransform> @Cached SpaceBases for Update Rate optimization.
---@field GlobalAnimRateScale number @Used to scale speed of all animations on this skeletal mesh.
---@field UseAsyncScene EDynamicActorScene @The simulation scene to use for this instance. By default we use what's in the physics asset (which defaults to the sync scene)
---@field bHasValidBodies number @If true, there is at least one body in the current PhysicsAsset with a valid bone in the current SkeletalMesh
---@field KinematicBonesUpdateType EKinematicBonesUpdateToPhysics @If we are running physics, should we update non-simulated bones based on the animation bone positions.
---@field UpdateKinematicBonesRate number
---@field PhysicsTransformUpdateMode EPhysicsTransformUpdateMode @Whether physics simulation updates component transform.
---@field bBlendPhysics number @Enables blending in of physics bodies whether Simulate or not
---@field bEnablePhysicsOnDedicatedServer number @If true, simulate physics for this component on a dedicated server. This should be set if simulating physics and replicating with a dedicated server. Note: This property cannot be changed at runtime.
---@field bEnableCreatePhysicsOnDedicatedServer number
---@field bNeedUpdatePhysicsTickRegisteredState boolean
---@field bUpdateJointsFromAnimation number @If we should pass joint position to joints each frame, so that they can be used by motorized joints to drive the ragdoll based on the animation.
---@field bDisableClothSimulation number @Disable cloth simulation and play original animation without simulation
---@field bAllowAnimCurveEvaluation number @Disable animation curves for this component. If this is set true, no curves will be processed
---@field bDisableAnimCurves_DEPRECATED number @DEPRECATED. Use bAllowAnimCurveEvaluation instead
---@field DisallowedAnimCurves ULuaArrayHelper<string> @You can choose to disable certain curves if you prefer. This is transient curves that will be ignored by animation system if you choose this
---@field bCollideWithEnvironment number @can't collide with part of environment if total collision volumes exceed 16 capsules or 32 planes per convex
---@field bCollideWithAttachedChildren number @can't collide with part of attached children if total collision volumes exceed 16 capsules or 32 planes per convex
---@field bLocalSpaceSimulation number @It's worth trying this option when you feel that the current cloth simulation is unstable. The scale of the actor is maintained during the simulation. It is possible to add the inertia effects to the simulation, through the inertiaScale parameter of the clothing material. So with an inertiaScale of 1.0 there should be no visible difference between local space and global space simulation. Known issues: - Currently there's simulation issues when this feature is used in 3.x (DE4076) So if localSpaceSim is enabled there's no inertia effect when the global pose of the clothing actor changes.
---@field bClothMorphTarget number @cloth morph target option This option will be applied only before playing because should do pre-calculation to reduce computation time for run-time play so it's impossible to change this option in run-time
---@field bResetAfterTeleport number @reset the clothing after moving the clothing position (called teleport)
---@field ClothBlendWeight number @weight to blend between simulated results and key-framed positions if weight is 1.0, shows only cloth simulation results and 0.0 will show only skinned results
---@field RootBoneTranslation FVector @Offset of the root bone from the reference pose. Used to offset bounding box.
---@field bDeferMovementFromSceneQueries number @Whether animation and world transform updates are deferred. If this is on, the kinematic bodies (scene query data) will not update until the next time the physics simulation is run
---@field bNoSkeletonUpdate number @Skips Ticking and Bone Refresh.
---@field bPauseAnims number @pauses this component's animations (doesn't tick them, but still refreshes bones)
---@field bUseRefPoseOnInitAnim boolean @On InitAnim should we set to ref pose (if false use first tick of animation data)
---@field bEnablePerPolyCollision number @Uses skinned data for collision data.
---@field bForceRefpose boolean @If true, force the mesh into the reference pose - is an optimization.
---@field bOnlyAllowAutonomousTickPose number @If true TickPose() will not be called from the Component's TickComponent function. It will instead be called from Autonomous networking updates. See ACharacter.
---@field bIsAutonomousTickPose number @True if calling TickPose() from Autonomous networking updates. See ACharacter.
---@field bOldForceRefPose number @If bForceRefPose was set last tick.
---@field bShowPrePhysBones number @Bool that enables debug drawing of the skeleton before it is passed to the physics. Useful for debugging animation-driven physics.
---@field bRequiredBonesUpToDate number @If false, indicates that on the next call to UpdateSkelPose the RequiredBones array should be recalculated.
---@field bAnimTreeInitialised number @If true, AnimTree has been initialised.
---@field bIncludeComponentLocationIntoBounds number @If true, the Location of this Component will be included into its bounds calculation (this can be useful when using SMU_OnlyTickPoseWhenRendered on a character that moves away from the root and no bones are left near the origin of the component)
---@field bEnableLineCheckWithBounds number @If true, line checks will test against the bounding box of this skeletal mesh component and return a hit if there is a collision.
---@field CachedAnimCurveUidVersion number @Cache AnimCurveUidVersion from Skeleton and this will be used to identify if it needs to be updated
---@field LineCheckBoundsScale FVector @If bEnableLineCheckWithBounds is true, scale the bounds by this value before doing line check.
---@field OnConstraintBroken FConstraintBrokenSignature @Notification when constraint is broken.
---@field SaveBoneSpaceTransfroms ULuaArrayHelper<FTransform>
---@field ClothingSimulationFactory UClothingSimulationFactory @Class of the object responsible for
---@field TeleportDistanceThreshold number @Conduct teleportation if the character's movement is greater than this threshold in 1 frame. Zero or negative values will skip the check. You can also do force teleport manually using ForceNextUpdateTeleport() / ForceNextUpdateTeleportAndReset().
---@field TeleportRotationThreshold number @Rotation threshold in degrees, ranging from 0 to 180. Conduct teleportation if the character's rotation is greater than this threshold in 1 frame. Zero or negative values will skip the check.
---@field OnAnimInitialized FOnAnimInitialized
---@field OnPreAnimClearScriptInstance FOnAnimClearScriptInstance
---@field OnCompletePostAnimationEvaluationEnd FOnCompletePostAnimationEvaluationEnd
---@field DynamicMulticastDelegate_OnFinalizeBoneTransform FOnFinalizeBoneTransform
---@field bEnableUpdateOverlapsEvent number
---@field OnSkeletalUpdateOverlapsEvent FOnSkeletalUpdateOverlaps
---@field bDefaultLooping_DEPRECATED number
---@field bDefaultPlaying_DEPRECATED number
---@field DefaultPosition_DEPRECATED number
---@field DefaultPlayRate_DEPRECATED number
---@field LastPoseTickFrame number
---@field LastPoseTickTime number @Keep track of when animation has been ticked to ensure it is ticked only once per frame.
---@field bNeedsQueuedAnimEventsDispatched boolean
---@field bIsNeedUpdate boolean
---@field OnMeshLODChangeDelegate FMeshLODChangeDelegate
---@field bSkeletalMeshDirty boolean
---@field BoneRetargetSource string
---@field MeshShiftTransform FTransform
---@field MeshShiftRefBone string
---@field MeshShiftAnchorRefBone string
---@field bUseMeshShiftFeature boolean
---@field bOnlyPartOfShiftRefBoneAsRoot boolean
---@field MeshShiftCompensationType EMeshShiftCompensationType
---@field MeshShiftCompensationBaseSkelComp USkeletalMeshComponent
---@field AnimOverrideMeshShiftParam FMeshShiftParam
---@field DynamicBoneScaleFeature_Scale3D FVector
---@field DynamicBoneScaleFeature_BoneNameList ULuaArrayHelper<string>
---@field bUseDynamicBoneScaleFeature boolean
---@field bIsOverrideScale boolean
---@field bIsEnableBatchSection boolean
---@field BatchSectionList ULuaArrayHelper<FDynamicBatchSectionInfo>
---@field OriginalMaterials ULuaArrayHelper<UMaterialInterface>
local USkeletalMeshComponent = {}

---@param NewClass UClass
---@param bTickAnimationNow boolean
function USkeletalMeshComponent:SetAnimInstanceClass(NewClass, bTickAnimationNow) end

---@param InputTransforms ULuaArrayHelper<FTransform>
function USkeletalMeshComponent:CopyBoneSpaceTransfroms(InputTransforms) end

---@param Other USkeletalMeshComponent
function USkeletalMeshComponent:GetBoneSpaceTransfromsForCopy(Other) end

function USkeletalMeshComponent:GetSubAnimInstances() end

function USkeletalMeshComponent:GetNewSubAnimInstances() end

function USkeletalMeshComponent:GetAllSubAnimInstances() end

function USkeletalMeshComponent:GetDirtySubAnimInstances() end

---清理所有脏标记的SubAnimInstance 从SubInstances、NewSubInstances、StopTickSubInstances中移除，并调用UninitializeAnimation、PendingDestroy等清理逻辑
function USkeletalMeshComponent:ClearDirtySubAnimInstances() end

---@param NewInstance UAnimInstance
function USkeletalMeshComponent:AddNewSubAnimInstance(NewInstance) end

---@param NewInstance UAnimInstance
function USkeletalMeshComponent:AddDirtySubAnimInstance(NewInstance) end

---@param NewInstance UAnimInstance
function USkeletalMeshComponent:AddStopTickSubAnimInstance(NewInstance) end

---Below are the interface to control animation when animation mode, not blueprint mode *
---@param InAnimationMode EAnimationMode
function USkeletalMeshComponent:SetAnimationMode(InAnimationMode) end

---@return EAnimationMode
function USkeletalMeshComponent:GetAnimationMode() end

---@param Animation UAnimationAsset
---@return number
function USkeletalMeshComponent:GetAnimationPosition(Animation) end

---@param NewAnimToPlay UAnimationAsset
---@param bLooping boolean
function USkeletalMeshComponent:PlayAnimation(NewAnimToPlay, bLooping) end

---@param NewAnimToPlay UAnimationAsset
function USkeletalMeshComponent:SetAnimation(NewAnimToPlay) end

---@param bLooping boolean
function USkeletalMeshComponent:Play(bLooping) end

function USkeletalMeshComponent:Stop() end

---@return boolean
function USkeletalMeshComponent:IsPlaying() end

---@param InPos number
---@param bFireNotifies boolean
function USkeletalMeshComponent:SetPosition(InPos, bFireNotifies) end

---@return number
function USkeletalMeshComponent:GetPosition() end

---@param Rate number
function USkeletalMeshComponent:SetPlayRate(Rate) end

---@return number
function USkeletalMeshComponent:GetPlayRate() end

---This overrides current AnimationData parameter in the SkeletalMeshComponent. This will serialize when the component serialize so it can be used during construction script. However note that this will override current existing data This can be useful if you'd like to make a blueprint with custom default animation per component This sets single player mode, which means you can't use AnimBlueprint with it
---@param InAnimToPlay UAnimationAsset
---@param bIsLooping boolean
---@param bIsPlaying boolean
---@param Position number
---@param PlayRate number
function USkeletalMeshComponent:OverrideAnimationData(InAnimToPlay, bIsLooping, bIsPlaying, Position, PlayRate) end

---Set Morph Target with Name and Value(0-1)
---@param MorphTargetName string
---@param Value number
---@param bRemoveZeroWeight boolean
function USkeletalMeshComponent:SetMorphTarget(MorphTargetName, Value, bRemoveZeroWeight) end

---Clear all Morph Target that are set to this mesh
function USkeletalMeshComponent:ClearMorphTargets() end

---Get Morph target with given name
---@param MorphTargetName string
---@return number
function USkeletalMeshComponent:GetMorphTarget(MorphTargetName) end

---Takes a snapshot of this skeletal mesh component's pose and saves it to the specified snapshot. The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose
---@param Snapshot FPoseSnapshot
function USkeletalMeshComponent:SnapshotPose(Snapshot) end

---Get/Set the max distance scale of clothing mesh vertices
---@return number
function USkeletalMeshComponent:GetClothMaxDistanceScale() end

---@param Scale number
function USkeletalMeshComponent:SetClothMaxDistanceScale(Scale) end

---Used to indicate we should force 'teleport' during the next call to UpdateClothState, This will transform positions and velocities and thus keep the simulation state, just translate it to a new pose.
function USkeletalMeshComponent:ForceClothNextUpdateTeleport() end

---Used to indicate we should force 'teleport and reset' during the next call to UpdateClothState. This can be used to reset it from a bad state or by a teleport where the old state is not important anymore.
function USkeletalMeshComponent:ForceClothNextUpdateTeleportAndReset() end

---Stops simulating clothing, but does not show clothing ref pose. Keeps the last known simulation state
function USkeletalMeshComponent:SuspendClothingSimulation() end

---Resumes a previously suspended clothing simulation, teleporting the clothing on the next tick
function USkeletalMeshComponent:ResumeClothingSimulation() end

---Gets whether or not the clothing simulation is currently suspended
---@return boolean
function USkeletalMeshComponent:IsClothingSimulationSuspended() end

---Reset the teleport mode of a next update to 'Continuous'
function USkeletalMeshComponent:ResetClothTeleportMode() end

---If this component has a valid MasterPoseComponent then this function makes cloth items on the slave component take the transforms of the cloth items on the master component instead of simulating separately. The meshes used in the components must be identical for the cloth to bind correctly
function USkeletalMeshComponent:BindClothToMasterPoseComponent() end

---If this component has a valid MasterPoseComponent and has previously had its cloth bound to the MCP, this function will unbind the cloth and resume simulation. space, we will restore this setting. This will cause the master component to reset which may be undesirable.
---@param bRestoreSimulationSpace boolean
function USkeletalMeshComponent:UnbindClothFromMasterPoseComponent(bRestoreSimulationSpace) end

---Sets whether or not to force tick component in order to update animation and refresh transform for this component This is supported only in the editor
---@param NewUpdateState boolean
function USkeletalMeshComponent:SetUpdateAnimationInEditor(NewUpdateState) end

---return true if currently updating in editor is true this is non BP because this is only used for slave component to detect master component ticking state
---@param bInDisableAnimCurves boolean
function USkeletalMeshComponent:SetDisableAnimCurves(bInDisableAnimCurves) end

---@param bInAllow boolean
function USkeletalMeshComponent:SetAllowAnimCurveEvaluation(bInAllow) end

---@param NameOfCurve string
---@param bAllow boolean
function USkeletalMeshComponent:AllowAnimCurveEvaluation(NameOfCurve, bAllow) end

---By reset, it will allow all the curves to be evaluated
function USkeletalMeshComponent:ResetAllowedAnimCurveEvaluation() end

---resets, and then only allow the following list to be allowed/disallowed
---@param List ULuaArrayHelper<string>
---@param bAllow boolean
function USkeletalMeshComponent:SetAllowedAnimCurvesEvaluation(List, bAllow) end

---Gets the teleportation rotation threshold.
---@return number
function USkeletalMeshComponent:GetTeleportRotationThreshold() end

---Sets the teleportation rotation threshold.
---@param Threshold number
function USkeletalMeshComponent:SetTeleportRotationThreshold(Threshold) end

---Gets the teleportation distance threshold.
---@return number
function USkeletalMeshComponent:GetTeleportDistanceThreshold() end

---Sets the teleportation distance threshold.
---@param Threshold number
function USkeletalMeshComponent:SetTeleportDistanceThreshold(Threshold) end

---Changes the value of bNotifyRigidBodyCollision for a given body
---@param bNewNotifyRigidBodyCollision boolean
---@param BoneName string
function USkeletalMeshComponent:SetBodyNotifyRigidBodyCollision(bNewNotifyRigidBodyCollision, BoneName) end

---Changes the value of bNotifyRigidBodyCollision on all bodies below a given bone
---@param bNewNotifyRigidBodyCollision boolean
---@param BoneName string
---@param bIncludeSelf boolean
function USkeletalMeshComponent:SetNotifyRigidBodyCollisionBelow(bNewNotifyRigidBodyCollision, BoneName, bIncludeSelf) end

---Enables or disables gravity for the given bone. NAME_None indicates the root body will be edited. If the bone name given is otherwise invalid, nothing happens.
---@param bEnableGravity boolean
---@param BoneName string
function USkeletalMeshComponent:SetEnableBodyGravity(bEnableGravity, BoneName) end

---Checks whether or not gravity is enabled on the given bone. NAME_None indicates the root body should be queried. If the bone name given is otherwise invalid, false is returned.
---@param BoneName string
---@return boolean
function USkeletalMeshComponent:IsBodyGravityEnabled(BoneName) end

---Enables or disables gravity to all bodies below the given bone. NAME_None indicates all bodies will be edited. In that case, consider using UPrimitiveComponent::EnableGravity.
---@param bEnableGravity boolean
---@param BoneName string
---@param bIncludeSelf boolean
function USkeletalMeshComponent:SetEnableGravityOnAllBodiesBelow(bEnableGravity, BoneName, bIncludeSelf) end

---Given a world position, find the closest point on the physics asset. Note that this is independent of collision and welding. This is based purely on animation position
---@param WorldPosition FVector
---@param ClosestWorldPosition FVector
---@param Normal FVector
---@param BoneName string
---@param Distance number
---@return boolean
function USkeletalMeshComponent:K2_GetClosestPointOnPhysicsAsset(WorldPosition, ClosestWorldPosition, Normal, BoneName, Distance) end

---Returns the mass (in kg) of the given bone
---@param BoneName string
---@param bScaleMass boolean
---@return number
function USkeletalMeshComponent:GetBoneMass(BoneName, bScaleMass) end

---Returns the center of mass of the skeletal mesh, instead of the root body's location
---@return FVector
function USkeletalMeshComponent:GetSkeletalCenterOfMass() end

---Add a force to all rigid bodies below. This is like a 'thruster'. Good for adding a burst over some (non zero) time. Should be called every frame for the duration of the force.
---@param Force FVector
---@param BoneName string
---@param bAccelChange boolean
---@param bIncludeSelf boolean
function USkeletalMeshComponent:AddForceToAllBodiesBelow(Force, BoneName, bAccelChange, bIncludeSelf) end

---Add impulse to all single rigid bodies below. Good for one time instant burst.
---@param Impulse FVector
---@param BoneName string
---@param bVelChange boolean
---@param bIncludeSelf boolean
function USkeletalMeshComponent:AddImpulseToAllBodiesBelow(Impulse, BoneName, bVelChange, bIncludeSelf) end

---@return boolean
function USkeletalMeshComponent:IsEnableAnimBoneStateDirtyFeature() end

---Set bSimulatePhysics to true for all bone bodies. Does not change the component bSimulatePhysics flag.
---@param bNewSimulate boolean
function USkeletalMeshComponent:SetAllBodiesSimulatePhysics(bNewSimulate) end

---This is global set up for setting physics blend weight This does multiple things automatically If PhysicsBlendWeight == 1.f, it will enable Simulation, and if PhysicsBlendWeight == 0.f, it will disable Simulation. Also it will respect each body's setup, so if the body is fixed, it won't simulate. Vice versa So if you'd like all bodies to change manually, do not use this function, but SetAllBodiesPhysicsBlendWeight
---@param PhysicsBlendWeight number
function USkeletalMeshComponent:SetPhysicsBlendWeight(PhysicsBlendWeight) end

---Disable physics blending of bones *
---@param bNewBlendPhysics boolean
function USkeletalMeshComponent:SetEnablePhysicsBlending(bNewBlendPhysics) end

---Set all of the bones below passed in bone to be simulated
---@param InBoneName string
---@param bNewSimulate boolean
---@param bIncludeSelf boolean
function USkeletalMeshComponent:SetAllBodiesBelowSimulatePhysics(InBoneName, bNewSimulate, bIncludeSelf) end

---Allows you to reset bodies Simulate state based on where bUsePhysics is set to true in the BodySetup.
function USkeletalMeshComponent:ResetAllBodiesSimulatePhysics() end

---@param PhysicsBlendWeight number
---@param bSkipCustomPhysicsType boolean
function USkeletalMeshComponent:SetAllBodiesPhysicsBlendWeight(PhysicsBlendWeight, bSkipCustomPhysicsType) end

---Set all of the bones below passed in bone to be simulated
---@param InBoneName string
---@param PhysicsBlendWeight number
---@param bSkipCustomPhysicsType boolean
---@param bIncludeSelf boolean
function USkeletalMeshComponent:SetAllBodiesBelowPhysicsBlendWeight(InBoneName, PhysicsBlendWeight, bSkipCustomPhysicsType, bIncludeSelf) end

---Accumulate AddPhysicsBlendWeight to physics blendweight for all of the bones below passed in bone to be simulated
---@param InBoneName string
---@param AddPhysicsBlendWeight number
---@param bSkipCustomPhysicsType boolean
function USkeletalMeshComponent:AccumulateAllBodiesBelowPhysicsBlendWeight(InBoneName, AddPhysicsBlendWeight, bSkipCustomPhysicsType) end

---Enable or Disable AngularPositionDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.
---@param bEnableSwingDrive boolean
---@param bEnableTwistDrive boolean
---@param bSkipCustomPhysicsType boolean
function USkeletalMeshComponent:SetAllMotorsAngularPositionDrive(bEnableSwingDrive, bEnableTwistDrive, bSkipCustomPhysicsType) end

---Enable or Disable AngularVelocityDrive. If motor is in SLERP mode it will be turned on if either EnableSwingDrive OR EnableTwistDrive are enabled. In Twist and Swing mode the twist and the swing can be controlled individually.
---@param bEnableSwingDrive boolean
---@param bEnableTwistDrive boolean
---@param bSkipCustomPhysicsType boolean
function USkeletalMeshComponent:SetAllMotorsAngularVelocityDrive(bEnableSwingDrive, bEnableTwistDrive, bSkipCustomPhysicsType) end

---Set Angular Drive motors params for all constraint instances
---@param InSpring number
---@param InDamping number
---@param InForceLimit number
---@param bSkipCustomPhysicsType boolean
function USkeletalMeshComponent:SetAllMotorsAngularDriveParams(InSpring, InDamping, InForceLimit, bSkipCustomPhysicsType) end

---Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset. If profile name is not found the joint is set to use the default constraint profile.
---@param JointName string
---@param ProfileName string
---@param bDefaultIfNotFound boolean
function USkeletalMeshComponent:SetConstraintProfile(JointName, ProfileName, bDefaultIfNotFound) end

---Sets the constraint profile properties (limits, motors, etc...) to match the constraint profile as defined in the physics asset for all constraints. If profile name is not found the joint is set to use the default constraint profile.
---@param ProfileName string
---@param bDefaultIfNotFound boolean
function USkeletalMeshComponent:SetConstraintProfileForAll(ProfileName, bDefaultIfNotFound) end

---Find Constraint Name from index
---@param ConstraintIndex number
---@return string
function USkeletalMeshComponent:FindConstraintBoneName(ConstraintIndex) end

---Break a constraint off a Gore mesh.
---@param Impulse FVector
---@param HitLocation FVector
---@param InBoneName string
function USkeletalMeshComponent:BreakConstraint(Impulse, HitLocation, InBoneName) end

---Sets the Angular Motion Ranges for a named bone
---@param InBoneName string
---@param Swing1LimitAngle number
---@param TwistLimitAngle number
---@param Swing2LimitAngle number
function USkeletalMeshComponent:SetAngularLimits(InBoneName, Swing1LimitAngle, TwistLimitAngle, Swing2LimitAngle) end

---Gets the current Angular state for a named bone constraint
---@param InBoneName string
---@param Swing1Angle number
---@param TwistAngle number
---@param Swing2Angle number
function USkeletalMeshComponent:GetCurrentJointAngles(InBoneName, Swing1Angle, TwistAngle, Swing2Angle) end

---@param bBlockOnTask boolean
---@param bPerformPostAnimEvaluation boolean
---@return boolean
function USkeletalMeshComponent:HandleExistingParallelEvaluationTask(bBlockOnTask, bPerformPostAnimEvaluation) end

---ImmediatePhysics Evaluation Start
---@param bBlockOnTask boolean
---@return boolean
function USkeletalMeshComponent:HandleExistingParallelIMPhysicsEvaluationTask(bBlockOnTask) end

---Checked whether we have already ticked the pose this frame
---@return number
function USkeletalMeshComponent:GetLastPoseTickFrame_BP() end

---@param InPauseFrameCount number
function USkeletalMeshComponent:PauseIMSimulation(InPauseFrameCount) end

---@param InIsUseShiftFeature boolean
---@param InIsOnlyPartOfShiftRefBoneAsRoot boolean
---@param InShiftTransform FTransform
---@param InShiftRefBone string
---@param InAnchorRefBone string
function USkeletalMeshComponent:MarkMeshShiftFeature(InIsUseShiftFeature, InIsOnlyPartOfShiftRefBoneAsRoot, InShiftTransform, InShiftRefBone, InAnchorRefBone) end

---@param InMeshShiftCompensationType EMeshShiftCompensationType
---@param InCompensationBaseSkelComp USkeletalMeshComponent
function USkeletalMeshComponent:MarkMeshShiftCompensation(InMeshShiftCompensationType, InCompensationBaseSkelComp) end

---@param InAnimMeshShiftParam FMeshShiftParam
function USkeletalMeshComponent:AnimOverrideMeshShiftParam_Start(InAnimMeshShiftParam) end

---@param InAnimMeshShiftParam FMeshShiftParam
function USkeletalMeshComponent:AnimOverrideMeshShiftParam_Stop(InAnimMeshShiftParam) end

---@param InCurveName string
---@return number
function USkeletalMeshComponent:GetRawCurveValue(InCurveName) end

---@param InTargetBoneName string
---@return FTransform
function USkeletalMeshComponent:GetRetargetBoneRelativeTMInBaseRefPose(InTargetBoneName) end

---@param InIsActive boolean
---@param InTargetSkelComp USkeletalMeshComponent
function USkeletalMeshComponent:SingleNodeInstance_ActiveBoneRetargetFeature(InIsActive, InTargetSkelComp) end

---@param InIsUseRetargetFeature boolean
---@param InIsConsiderMasterPoseRetarget boolean
---@param InIsForeceUseBaseSkeletonAsRetargetSource boolean
---@param InTargetSkelComp USkeletalMeshComponent
function USkeletalMeshComponent:SingleNodeInstance_OverrideBoneRetargetParam(InIsUseRetargetFeature, InIsConsiderMasterPoseRetarget, InIsForeceUseBaseSkeletonAsRetargetSource, InTargetSkelComp) end

---@return boolean
function USkeletalMeshComponent:IsInitAnimTickDelay() end

---@return boolean
function USkeletalMeshComponent:IsInitRefreshPoseDelay() end

---@param InInitAnimTickParam FDelayInitAnimTickParam
function USkeletalMeshComponent:DelayInitAnimTick(InInitAnimTickParam) end

function USkeletalMeshComponent:DelayInitRefreshPose() end

function USkeletalMeshComponent:PerformDelayedInitAnimTick() end

function USkeletalMeshComponent:PerformDelayedInitRefreshPose() end

---For Dynamic Bone Scale Feature Start *************************************************************
---@param InIsUseDynamicBoneScaleFeature boolean
---@param InIsOverrideScale boolean
---@param InTargetBoneNameList ULuaArrayHelper<string>
---@param InDynamicScale3D FVector
function USkeletalMeshComponent:MarkDynamicBoneScaleFeature(InIsUseDynamicBoneScaleFeature, InIsOverrideScale, InTargetBoneNameList, InDynamicScale3D) end

---@param LODIndex number
---@return boolean
function USkeletalMeshComponent:IsSectionBatched(LODIndex) end

---@param LODIdx number
---@param IsBatchSection boolean
function USkeletalMeshComponent:BatchSectionsWithAtlas(LODIdx, IsBatchSection) end

---@param LODIdx number
---@param BatchIndices ULuaArrayHelper<number>
---@param IsBatchSection boolean
function USkeletalMeshComponent:AutoBatchSection(LODIdx, BatchIndices, IsBatchSection) end

---@param DurationTime number
function USkeletalMeshComponent:ClearInterpolateBoneCache(DurationTime) end
