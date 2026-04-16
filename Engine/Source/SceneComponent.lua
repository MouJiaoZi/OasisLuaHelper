---@meta

---Detail mode for scene component rendering.
---@class EDetailMode
---@field DM_Low number @Low
---@field DM_Medium number @Medium
---@field DM_High number @High
---@field DM_MAX number
EDetailMode = {}


---The space for the transform
---@class ERelativeTransformSpace
---@field RTS_World number @World space transform.
---@field RTS_Actor number @Actor space transform.
---@field RTS_Component number @Component space transform.
---@field RTS_ParentBoneSpace number @Parent bone space transform
---@field RTS_ViewTranslated number @View origin translated transform
ERelativeTransformSpace = {}


---@class EUpdateTransformOption
---@field UTP_None number
---@field UTP_Lock number
---@field UTP_SnapParent number
EUpdateTransformOption = {}


---@class FOnSceneComponentTransformChanged : ULuaMulticastDelegate
FOnSceneComponentTransformChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldTransform: FTransform, TriggerTag: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSceneComponentTransformChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldTransform FTransform
---@param TriggerTag string
function FOnSceneComponentTransformChanged:Broadcast(OldTransform, TriggerTag) end


---@class FOnSceneComponentRelativeScale3DChanged : ULuaMulticastDelegate
FOnSceneComponentRelativeScale3DChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldScale3D: FVector, TriggerTag: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSceneComponentRelativeScale3DChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldScale3D FVector
---@param TriggerTag string
function FOnSceneComponentRelativeScale3DChanged:Broadcast(OldScale3D, TriggerTag) end


---@class FPhysicsVolumeChanged : ULuaMulticastDelegate
FPhysicsVolumeChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewVolume: APhysicsVolume) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPhysicsVolumeChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewVolume APhysicsVolume
function FPhysicsVolumeChanged:Broadcast(NewVolume) end


---@class FTransformUpdatedDynamic : ULuaSingleDelegate
FTransformUpdatedDynamic = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTransformUpdatedDynamic:Bind(Callback, Obj) end

---执行委托
function FTransformUpdatedDynamic:Execute() end


---A SceneComponent has a transform and supports attachment, but has no rendering or collision capabilities. Useful as a 'dummy' component in the hierarchy to offset others.
---@class USceneComponent: UActorComponent
---@field PhysicsVolumeChangedDelegate FPhysicsVolumeChanged @Delegate that will be called when PhysicsVolume has been changed *
---@field TransformUpdatedDynamic FTransformUpdatedDynamic
---@field PhysicsVolume APhysicsVolume @Physics Volume in which this SceneComponent is located *
---@field AttachSocketName string @Optional socket name on AttachParent that we are attached to.
---@field AttachChildren ULuaArrayHelper<USceneComponent> @List of child SceneComponents that are attached to us.
---@field ClientAttachedChildren ULuaArrayHelper<USceneComponent> @Set of attached SceneComponents that were attached by the client so we can fix up AttachChildren when it is replicated to us.
---@field RelativeLocation FVector @Location of the component relative to its parent
---@field RelativeRotation FRotator @Rotation of the component relative to its parent
---@field RelativeScale3D FVector @Non-uniform scaling of the component relative to its parent. Note that scaling is always applied in local space (no shearing etc)
---@field ComponentToWorld FTransform @Current transform of the component, relative to the world
---@field ComponentVelocity FVector @Velocity of the component.
---@field bComponentToWorldUpdated number @True if we have ever updated ComponentToWorld based on RelativeLocation/Rotation/Scale. Used at startup to make sure it is initialized.
---@field bAbsoluteLocation number @If RelativeLocation should be considered relative to the world, rather than the parent
---@field bAbsoluteRotation number @If RelativeRotation should be considered relative to the world, rather than the parent
---@field bAbsoluteScale number @If RelativeScale3D should be considered relative to the world, rather than the parent
---@field bVisible number @Whether to completely draw the primitive; if false, the primitive is not drawn, does not cast a shadow.
---@field bHiddenInGame number @Whether to hide the primitive in game, if the primitive is Visible.
---@field bShouldUpdatePhysicsVolume number @Whether or not the cached PhysicsVolume this component overlaps should be updated when the component is moved.
---@field bBoundsChangeTriggersStreamingDataRebuild number @If true, a change in the bounds of the component will call trigger a streaming data rebuild
---@field bUseAttachParentBound number @If true, this component uses its parents bounds when attached. This can be a significant optimization with many components attached together.
---@field bShouldUpdateOverLaps number
---@field bForceUpdateChildCompTransform number
---@field bEnableUpdateTransformOption number
---@field bUpdateTransformOptionConsiderAbsolute number
---@field bOpenServerOptLite number @Simplify server move by zoranouyang
---@field bShouldUseTeleportMove number
---@field bForceFrameInterpolate number
---@field bEnableParallelMove number
---@field Mobility EComponentMobility @How often this component is allowed to move, used to make various optimizations. Only safe to set in constructor.
---@field DetailMode EDetailMode @If detail mode is >= system detail mode, primitive won't be rendered.
---@field UpdateTransformOption EUpdateTransformOption
---@field bIsFppLayerRecursive number
---@field bDisableFppLayerRecursive number
local USceneComponent = {}

function USceneComponent:OnRep_Transform() end

function USceneComponent:OnRep_AttachParent() end

function USceneComponent:OnRep_AttachChildren() end

function USceneComponent:OnRep_AttachSocketName() end

---@param OldValue boolean
function USceneComponent:OnRep_Visibility(OldValue) end

---Set the location of the component relative to its parent Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param NewLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetRelativeLocation(NewLocation, bSweep, SweepHitResult, bTeleport) end

---Set the rotation of the component relative to its parent If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
---@param NewRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetRelativeRotation(NewRotation, bSweep, SweepHitResult, bTeleport) end

---Set the transform of the component relative to its parent If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
---@param NewTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetRelativeTransform(NewTransform, bSweep, SweepHitResult, bTeleport) end

---Returns the transform of the component relative to its parent
---@return FTransform
function USceneComponent:GetRelativeTransform() end

---Reset the transform of the component relative to its parent. Sets relative location to zero, relative rotation to no rotation, and Scale to 1.
function USceneComponent:ResetRelativeTransform() end

---Set the non-uniform scale of the component relative to its parent
---@param NewScale3D FVector
function USceneComponent:SetRelativeScale3D(NewScale3D) end

---Adds a delta to the translation of the component relative to its parent Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param DeltaLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddRelativeLocation(DeltaLocation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta the rotation of the component relative to its parent If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
---@param DeltaRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddRelativeRotation(DeltaRotation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the location of the component in its local reference frame Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param DeltaLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddLocalOffset(DeltaLocation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the rotation of the component in its local reference frame If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts).
---@param DeltaRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddLocalRotation(DeltaRotation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the transform of the component in its local reference frame. Scale is unchanged. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param DeltaTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddLocalTransform(DeltaTransform, bSweep, SweepHitResult, bTeleport) end

---Put this component at the specified location in world space. Updates relative location to achieve the final world location. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param NewLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetWorldLocation(NewLocation, bSweep, SweepHitResult, bTeleport) end

---@param NewRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetWorldRotation(NewRotation, bSweep, SweepHitResult, bTeleport) end

---Set the relative scale of the component to put it at the supplied scale in world space.
---@param NewScale FVector
function USceneComponent:SetWorldScale3D(NewScale) end

---Set the transform of the component in world space. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param NewTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetWorldTransform(NewTransform, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the location of the component in world space. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param DeltaLocation FVector
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddWorldOffset(DeltaLocation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the rotation of the component in world space. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param DeltaRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddWorldRotation(DeltaRotation, bSweep, SweepHitResult, bTeleport) end

---Adds a delta to the transform of the component in world space. Scale is unchanged. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param DeltaTransform FTransform
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_AddWorldTransform(DeltaTransform, bSweep, SweepHitResult, bTeleport) end

---Return location of the component, in world space
---@return FVector
function USceneComponent:K2_GetComponentLocation() end

---Returns rotation of the component, in world space.
---@return FRotator
function USceneComponent:K2_GetComponentRotation() end

---Returns scale of the component, in world space.
---@return FVector
function USceneComponent:K2_GetComponentScale() end

---Get the current component-to-world transform for this component
---@return FTransform
function USceneComponent:K2_GetComponentToWorld() end

---Get the forward (X) unit direction vector from this component, in world space.
---@return FVector
function USceneComponent:GetForwardVector() end

---Get the up (Z) unit direction vector from this component, in world space.
---@return FVector
function USceneComponent:GetUpVector() end

---Get the right (Y) unit direction vector from this component, in world space.
---@return FVector
function USceneComponent:GetRightVector() end

---Returns whether the specified body is currently using physics simulation
---@param BoneName string
---@return boolean
function USceneComponent:IsSimulatingPhysics(BoneName) end

---Returns whether the specified body is currently using physics simulation
---@return boolean
function USceneComponent:IsAnySimulatingPhysics() end

---Get the socket we are attached to.
---@return string
function USceneComponent:GetAttachSocketName() end

---Gets all parent components up to and including the root component
---@param Parents ULuaArrayHelper<USceneComponent>
function USceneComponent:GetParentComponents(Parents) end

---Gets the number of attached children components
---@return number
function USceneComponent:GetNumChildrenComponents() end

---Gets all the attached child components
---@param bIncludeAllDescendants boolean
---@param Children ULuaArrayHelper<USceneComponent>
function USceneComponent:GetChildrenComponents(bIncludeAllDescendants, Children) end

---Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered.
---@param InParent USceneComponent
---@param InSocketName string
---@param AttachType EAttachLocation
---@param bWeldSimulatedBodies boolean
---@return boolean
function USceneComponent:K2_AttachTo(InParent, InSocketName, AttachType, bWeldSimulatedBodies) end

---Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered.
---@param Parent USceneComponent
---@param SocketName string
---@param LocationRule EAttachmentRule
---@param RotationRule EAttachmentRule
---@param ScaleRule EAttachmentRule
---@param bWeldSimulatedBodies boolean
---@return boolean
function USceneComponent:K2_AttachToComponent(Parent, SocketName, LocationRule, RotationRule, ScaleRule, bWeldSimulatedBodies) end

---Zeroes out the relative transform of the component, and calls AttachTo(). Useful for attaching directly to a scene component or socket location
---@param InParent USceneComponent
---@param InSocketName string
---@return boolean
function USceneComponent:SnapTo(InParent, InSocketName) end

---Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo)
---@param bMaintainWorldPosition boolean
---@param bCallModify boolean
function USceneComponent:DetachFromParent(bMaintainWorldPosition, bCallModify) end

---Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo)
---@param LocationRule EDetachmentRule
---@param RotationRule EDetachmentRule
---@param ScaleRule EDetachmentRule
---@param bCallModify boolean
function USceneComponent:K2_DetachFromComponent(LocationRule, RotationRule, ScaleRule, bCallModify) end

---Gets the names of all the sockets on the component.
function USceneComponent:GetAllSocketNames() end

---Get world-space socket transform.
---@param InSocketName string
---@param TransformSpace ERelativeTransformSpace
---@return FTransform
function USceneComponent:GetSocketTransform(InSocketName, TransformSpace) end

---Get world-space socket or bone location.
---@param InSocketName string
---@return FVector
function USceneComponent:GetSocketLocation(InSocketName) end

---Get world-space socket or bone  FRotator rotation.
---@param InSocketName string
---@return FRotator
function USceneComponent:GetSocketRotation(InSocketName) end

---Get world-space socket or bone FQuat rotation.
---@param InSocketName string
---@return FQuat
function USceneComponent:GetSocketQuaternion(InSocketName) end

---Get world-space socket or bone scale.
---@param InSocketName string
---@return FVector
function USceneComponent:GetSocketScale(InSocketName) end

---return true if socket with the given name exists
---@param InSocketName string
---@return boolean
function USceneComponent:DoesSocketExist(InSocketName) end

---Get velocity of the component: either ComponentVelocity, or the velocity of the physics body if simulating physics.
---@return FVector
function USceneComponent:GetComponentVelocity() end

---Is this component visible or not in game
---@return boolean
function USceneComponent:IsVisible() end

---set bForceDynamic
---@param InForceFrameInterpolate boolean
function USceneComponent:SetForceFrameInterpolate(InForceFrameInterpolate) end

---Set the location and rotation of the component relative to its parent Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param NewLocation FVector
---@param NewRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetRelativeLocationAndRotation(NewLocation, NewRotation, bSweep, SweepHitResult, bTeleport) end

---Set which parts of the relative transform should be relative to parent, and which should be relative to world
---@param bNewAbsoluteLocation boolean
---@param bNewAbsoluteRotation boolean
---@param bNewAbsoluteScale boolean
function USceneComponent:SetAbsolute(bNewAbsoluteLocation, bNewAbsoluteRotation, bNewAbsoluteScale) end

---@param ContainsParent boolean
---@return boolean
function USceneComponent:IsAbsoluteLocation(ContainsParent) end

---Set the relative location and rotation of the component to put it at the supplied pose in world space. Only the root component is swept and checked for blocking collision, child components move without sweeping. If collision is off, this has no effect. If true, physics velocity for this object is unchanged (so ragdoll parts are not affected by change in location). If false, physics velocity is updated based on the change in position (affecting ragdoll parts). If CCD is on and not teleporting, this will affect objects along the entire sweep volume.
---@param NewLocation FVector
---@param NewRotation FRotator
---@param bSweep boolean
---@param SweepHitResult FHitResult
---@param bTeleport boolean
function USceneComponent:K2_SetWorldLocationAndRotation(NewLocation, NewRotation, bSweep, SweepHitResult, bTeleport) end

---Set how often this component is allowed to move during runtime. Causes a component re-register if the component is already registered
---@param NewMobility EComponentMobility
function USceneComponent:K2_SetMobility(NewMobility) end

---@param InIsFppLayer boolean
function USceneComponent:SetFppLayerRecursive(InIsFppLayer) end

---@param bDisable boolean
function USceneComponent:SetDisableFppLayerRecursive(bDisable) end
