---@meta

---@class FAPTCDropOffLocationType
---@field World number
---@field Relative number
FAPTCDropOffLocationType = {}


---@class FAPTCSkeletalAnimationSyncData
---@field Status boolean
FAPTCSkeletalAnimationSyncData = {}


---@class FAPTCSocketAttachmentInternalData
---@field SocketName string
---@field OffsetLoc FVector
---@field OffsetRot FRotator
---@field bFemaleUseDiffAnim boolean
FAPTCSocketAttachmentInternalData = {}


---@class FAPTCSocketAttachmentNameTable
---@field SocketName string
---@field OffsetLoc FVector
---@field OffsetRot FRotator
---@field bFemaleUseDiffAnim boolean @Check this if you want female use different anim montage
FAPTCSocketAttachmentNameTable = {}


---@class FSkelAnimSyncDataChanged : ULuaMulticastDelegate
FSkelAnimSyncDataChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InSkeletalAnimationSyncData: FAPTCSkeletalAnimationSyncData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkelAnimSyncDataChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param InSkeletalAnimationSyncData FAPTCSkeletalAnimationSyncData
function FSkelAnimSyncDataChanged:Broadcast(InSkeletalAnimationSyncData) end


---@class FPlayerNumberChanged : ULuaMulticastDelegate
FPlayerNumberChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Num: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerNumberChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param Num number
function FPlayerNumberChanged:Broadcast(Num) end


---@class FAttachedPlayersChanged : ULuaSingleDelegate
FAttachedPlayersChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAttachedPlayersChanged:Bind(Callback, Obj) end

---执行委托
function FAttachedPlayersChanged:Execute() end


---@class FOnPlayerAttach : ULuaMulticastDelegate
FOnPlayerAttach = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AttachedPlayer: AActor, AttachedComponent: USceneComponent, IsDetach: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerAttach:Add(Callback, Obj) end

---触发 Lua 广播
---@param AttachedPlayer AActor
---@param AttachedComponent USceneComponent
---@param IsDetach boolean
function FOnPlayerAttach:Broadcast(AttachedPlayer, AttachedComponent, IsDetach) end


---@class UAttachPlayerToComponent: UActorComponent, IGISActionInterface
---@field OccupiedSockets ULuaArrayHelper<FAPTCSocketAttachmentInternalData>
---@field SocketNames ULuaArrayHelper<FAPTCSocketAttachmentNameTable>
---@field AutoStopOrStartPlayMontage boolean
---@field AttachedNumber number
---@field bUseSkinWeightProfile boolean
---@field SkeletalMeshAttachCounter ULuaMapHelper<USceneComponent, number>
---@field SkeletalAnimationSyncData ULuaArrayHelper<FAPTCSkeletalAnimationSyncData>
---@field PrevSkeletalAnimationSyncData ULuaArrayHelper<FAPTCSkeletalAnimationSyncData>
---@field DropOffLocations ULuaArrayHelper<FVector>
---@field DropOffLocationType FAPTCDropOffLocationType
---@field bDropOffRelativeUseLocationOffset boolean
---@field bUseActorAttachOffset boolean
---@field bIsFaceToSocket boolean
---@field bUseCtrlRotation boolean
---@field bUseRandomMontage boolean
---@field RandomAnimMontages ULuaArrayHelper<UAnimMontage>
---@field AttachedPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field PrevAttachedPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field SocketBaseTags string
---@field AttachDetachCondName string
---@field DisableGunValidation boolean
---@field bDropToOverridedLocation boolean
---@field bDropToActorLocation boolean
---@field debugDuration number
---@field sphererad number
---@field OverrideLocation FVector
---@field AttachRotationOffset FRotator
---@field AttachLocationOffset FVector
---@field bKickFromNearestLocation boolean
---@field AttachSocket string
---@field bSetViewTargetIfPossible boolean
---@field TransitionParams FViewTargetTransitionParams
---@field DetachLocationPredictRad number
---@field DetachTraceStartingHeightOffset number
---@field DetachLandHeightOffset number
---@field DetachTraceDepth number
---@field bDoTraceWhenDetach boolean
---@field bDebugOverrideLocation boolean
---@field bDetachWithNoCheck boolean
---@field bDrawDebugLines boolean
---@field bSetViewTargetIfPossble boolean
---@field bUseRelativeOverrideLocation boolean
---@field bIsClearAttachInfo boolean
---@field OnSkelAnimSyncDataChanged FSkelAnimSyncDataChanged
---@field EventOnPlayerNumberChanged FPlayerNumberChanged
---@field OnPlayerAttach FOnPlayerAttach
---@field OnAttachedPlayersChanged FAttachedPlayersChanged
local UAttachPlayerToComponent = {}

---@param InActor AActor
---@param bPlayMontage boolean
function UAttachPlayerToComponent:AttachPlayerToSockets(InActor, bPlayMontage) end

---@param InActor AActor
---@param bStopMontage boolean
function UAttachPlayerToComponent:DetachPlayerFromSockets(InActor, bStopMontage) end

---@param InActor AActor
---@param SocketName string
function UAttachPlayerToComponent:AttachPlayerToSocketsBySocketName(InActor, SocketName) end

---@param bStopMontage boolean
function UAttachPlayerToComponent:DetachAllPlayerFromSockets(bStopMontage) end

---@param InController APlayerController
---@return boolean
function UAttachPlayerToComponent:GetIsPlayerAttached(InController) end

function UAttachPlayerToComponent:OnRep_SkeletalAnimationSyncData() end

---@param AttachedPlayer AActor
---@param AttachedComponent USceneComponent
function UAttachPlayerToComponent:OnPlayerAttached(AttachedPlayer, AttachedComponent) end

---@param AttachedPlayer AActor
---@param AttachedComponent USceneComponent
function UAttachPlayerToComponent:OnPlayerDetached(AttachedPlayer, AttachedComponent) end

---@param Number number
function UAttachPlayerToComponent:OnPlayerNumberChanged(Number) end

function UAttachPlayerToComponent:OnRep_AttachedNumber() end

---@param AttachedComponent USceneComponent
---@param bShouldStartAnimation boolean
function UAttachPlayerToComponent:OnSkeletalAnimationStateChanged(AttachedComponent, bShouldStartAnimation) end

function UAttachPlayerToComponent:OnRep_AttachedPlayers() end

---@param InSkeletalAnimationSyncData FAPTCSkeletalAnimationSyncData
function UAttachPlayerToComponent:OnSkeletalAnimationSyncData(InSkeletalAnimationSyncData) end
