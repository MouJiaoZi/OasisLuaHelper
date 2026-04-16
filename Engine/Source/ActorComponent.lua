---@meta

---@class EComponentCreationMethod
---@field Native number @A component that is part of a native class.
---@field SimpleConstructionScript number @A component that is created from a template defined in the Components section of the Blueprint.
---@field UserConstructionScript number @A dynamically created component, either from the UserConstructionScript or from a Add Component node in a Blueprint event graph.
---@field Instance number @A component added to a single Actor instance via the Component section of the Actor's details panel.
EComponentCreationMethod = {}


---@class FActorComponentActivatedSignature : ULuaMulticastDelegate
FActorComponentActivatedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Component: UActorComponent, bReset: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorComponentActivatedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Component UActorComponent
---@param bReset boolean
function FActorComponentActivatedSignature:Broadcast(Component, bReset) end


---@class FActorComponentDeactivateSignature : ULuaMulticastDelegate
FActorComponentDeactivateSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Component: UActorComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorComponentDeactivateSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Component UActorComponent
function FActorComponentDeactivateSignature:Broadcast(Component) end


---@class FActorComponentGlobalCreatePhysicsSignature : ULuaMulticastDelegate
FActorComponentGlobalCreatePhysicsSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UActorComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorComponentGlobalCreatePhysicsSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UActorComponent
function FActorComponentGlobalCreatePhysicsSignature:Broadcast(Param1) end


---@class FActorComponentGlobalDestroyPhysicsSignature : ULuaMulticastDelegate
FActorComponentGlobalDestroyPhysicsSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: UActorComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActorComponentGlobalDestroyPhysicsSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 UActorComponent
function FActorComponentGlobalDestroyPhysicsSignature:Broadcast(Param1) end


---@class FOnActorComponentRemoved : ULuaSingleDelegate
FOnActorComponentRemoved = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorComponentRemoved:Bind(Callback, Obj) end

---执行委托
function FOnActorComponentRemoved:Execute() end


---ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors. ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents.
---@class UActorComponent: UObject, IInterface_AssetUserData
---@field PrimaryComponentTick any @Main tick function for the Actor
---@field DSTickInterval number @The frequency in seconds at which this tick function will be executed on DS.  If less than or equal to 0 then it will tick every frame If greater than 0 will cover PrimaryComponentTick.TickInterval Add by zoranouyang
---@field ComponentTags ULuaArrayHelper<string> @Array of tags that can be used for grouping and categorizing. Can also be accessed from scripting.
---@field NetUpdateFrequency number
---@field bAllowBPReceiveTickEvent boolean @If true, bp tick will be called , otherwise skipped
---@field TickAdapterIntvlOverride number
---@field bSyncOwnerTickAdapter number
---@field ScriptNetworkReplicatedPropertyWrapper FScriptNetworkReplicatedPropertyWrapper
---@field bSupportSuspendTick number
---@field bDestroyIfOnClientNoLocalControl number
---@field bReplicates number @Is this component currently replicating? Should the network code consider it for replication? Owning Actor must be replicating first!
---@field bNetAddressable number @Is this component safe to ID over the network by name?
---@field bDeferedConstructComponent number
---@field bSkipNewDuplicateComponent number
---@field bNameStableForBackupRestore number
---@field bNeedBackupRestoreForCustomSerialize number
---@field bEnableTickWhenOutOfRegion number @If true, this component will Enale Tick when out of region.
---@field bAutoActivate number @Whether the component is activated at creation or must be explicitly activated.
---@field bIsActive number @Whether the component is currently active.
---@field bEditableWhenInherited number
---@field bCanEverAffectNavigation number @Whether this component can potentially influence navigation
---@field bIsEditorOnly number @If true, the component will be excluded from non-editor builds
---@field bNeedsLoadForClient number @If false, the component will be excluded from client builds
---@field bNeedsLoadForServer number @If false, the component will be excluded from server builds
---@field bAllowRenderDataUpdateLag number
---@field CreationMethod EComponentCreationMethod
---@field UCSModifiedProperties ULuaArrayHelper<FSimpleMemberReference>
---@field OnComponentActivated FActorComponentActivatedSignature
---@field OnComponentDeactivated FActorComponentDeactivateSignature
local UActorComponent = {}

---@return string
function UActorComponent:GetToString() end

function UActorComponent:ForceNetUpdate() end

function UActorComponent:OnRep_ScriptNetworkReplicatedPropertyWrapper() end

---@param InObject UObject
function UActorComponent:CallSubObjectLuaOnRep(InObject) end

---@param Content FScriptNetworkRemoteContent
function UActorComponent:ServerSendScriptNetworkRemoteContent(Content) end

---@param Content FScriptNetworkRemoteContent
function UActorComponent:ServerSendScriptNetworkRemoteContent_Unreliable(Content) end

---@param Content FScriptNetworkRemoteContent
function UActorComponent:ClientSendScriptNetworkRemoteContent(Content) end

---@param Content FScriptNetworkRemoteContent
function UActorComponent:ClientSendScriptNetworkRemoteContent_Unreliable(Content) end

---@param Content FScriptNetworkRemoteContent
function UActorComponent:ReceiveScriptNetworkRemoteContent(Content) end

function UActorComponent:OnRep_Replicates() end

function UActorComponent:OnRep_IsActive() end

---See if this component contains the supplied tag
---@param Tag string
---@return boolean
function UActorComponent:ComponentHasTag(Tag) end

---Activates the SceneComponent
---@param bReset boolean
function UActorComponent:Activate(bReset) end

---Deactivates the SceneComponent.
function UActorComponent:Deactivate() end

---Sets whether the component is active or not
---@param bNewActive boolean
---@param bReset boolean
function UActorComponent:SetActive(bNewActive, bReset) end

---Toggles the active state of the component
function UActorComponent:ToggleActive() end

---Sets whether the component should be auto activate or not. Only safe during construction scripts.
---@param bNewAutoActivate boolean
function UActorComponent:SetAutoActivate(bNewAutoActivate) end

---Sets whether this component can tick when paused.
---@param bTickableWhenPaused boolean
function UActorComponent:SetTickableWhenPaused(bTickableWhenPaused) end

---Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components)
---@param ShouldReplicate boolean
function UActorComponent:SetIsReplicated(ShouldReplicate) end

---Blueprint implementable event for when the component is beginning play, called before its Owner's BeginPlay on Actor BeginPlay or when the component is dynamically created if the Actor has already BegunPlay.
function UActorComponent:ReceiveBeginPlay() end

---Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.
---@param EndPlayReason EEndPlayReason
function UActorComponent:ReceiveEndPlay(EndPlayReason) end

---Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered
---@param bEnabled boolean
function UActorComponent:SetComponentTickEnabled(bEnabled) end

---Returns whether this component has tick enabled or not
---@return boolean
function UActorComponent:IsComponentTickEnabled() end

---Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick.
---@param TickInterval number
function UActorComponent:SetComponentTickInterval(TickInterval) end

---Returns whether this component has tick enabled or not
---@return number
function UActorComponent:GetComponentTickInterval() end

---Unregister and mark for pending kill a component.  This may not be used to destroy a component that is owned by an actor unless the owning actor is calling the function.
---@param Object UObject
function UActorComponent:K2_DestroyComponent(Object) end

---Changes the ticking group for this component
---@param NewTickGroup ETickingGroup
function UActorComponent:SetTickGroup(NewTickGroup) end

---Make this component tick after PrerequisiteActor
---@param PrerequisiteActor AActor
function UActorComponent:AddTickPrerequisiteActor(PrerequisiteActor) end

---Make this component tick after PrerequisiteComponent.
---@param PrerequisiteComponent UActorComponent
function UActorComponent:AddTickPrerequisiteComponent(PrerequisiteComponent) end

---Remove tick dependency on PrerequisiteActor.
---@param PrerequisiteActor AActor
function UActorComponent:RemoveTickPrerequisiteActor(PrerequisiteActor) end

---Remove tick dependency on PrerequisiteComponent.
---@param PrerequisiteComponent UActorComponent
function UActorComponent:RemoveTickPrerequisiteComponent(PrerequisiteComponent) end

---Event called every frame
---@param DeltaSeconds number
function UActorComponent:ReceiveTick(DeltaSeconds) end
