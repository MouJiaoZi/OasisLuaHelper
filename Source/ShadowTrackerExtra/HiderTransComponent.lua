---@meta

---@class FHiderSelectedActorInfo
---@field bTransToActor boolean
---@field bLockTrans boolean
---@field CapsuleHalfHeight number
---@field CapsuleRadius number
---@field CameraSpringLength number
---@field CameraProbeSize number
---@field HitCapsuleRadius number
---@field NewMoveSpeed number
---@field MeshComRotation FRotator
---@field MeshComScale FVector
---@field ActorStaticMeshPath string
---@field TargetActorID number
---@field vLockTransPostion FVector
FHiderSelectedActorInfo = {}


---@class FHiderTransDelegate : ULuaSingleDelegate
FHiderTransDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHiderTransDelegate:Bind(Callback, Obj) end

---执行委托
function FHiderTransDelegate:Execute() end


---@class FHiderTransSelfDelegate : ULuaMulticastDelegate
FHiderTransSelfDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HiderCom: UHiderTransComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHiderTransSelfDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param HiderCom UHiderTransComponent
function FHiderTransSelfDelegate:Broadcast(HiderCom) end


---@class UHiderTransComponent: UActorComponent, IObjectPoolInterface
---@field CheckCapsuleSizeTime number
---@field DefaultCameraSpringLength number
---@field DefaultCameraSpringProbeSize number
---@field DefaultCapsuleHalfHeight number
---@field DefaultCapsuleRadius number
---@field DefaultHitCapsuleHalfHeight_Client number
---@field DefaultHitCapsuleRadius_Client number
---@field DefaultHitCapsuleHalfHeight_Server number
---@field DefaultHitCapsuleRadius_Server number
---@field TraceDistance number
---@field TransTargetTag string
---@field TransTargetMeshTag string
---@field OwnerStaticMeshComTag string
---@field OwnerSkeletalMeshComTag string
---@field CopyScale boolean
---@field CopyRotation boolean
---@field CollisionContainer_TransMesh_Transed_Unlock FCollisionResponseContainer
---@field CollisionContainer_RootCapsule_Transed_Locked FCollisionResponseContainer
---@field CheckTransBlockChannels ULuaArrayHelper<ECollisionChannel>
---@field CheckTransBlockChannelTips number
---@field bDebugDrawTransCapsule boolean
---@field DelayCheckCapsuleSizeTime number
---@field SpeedScaleValueAttrName string
---@field OwnerPlayerController ASTExtraPlayerController
---@field DefaultCollisionContainer_OwnerStaticMesh FCollisionResponseContainer
---@field DefaultCollisionContainer_OwnerRootCapsule FCollisionResponseContainer
---@field CameraData FCameraOffsetData
---@field PossessCameraData FCameraModifyData
---@field CopyTargetActor AActor
---@field HighLightTargetActor AActor
---@field HighLightMesh UMeshComponent
---@field HighLightDefaultMaterial ULuaArrayHelper<UMaterialInterface>
---@field SelectedActorInfo FHiderSelectedActorInfo
---@field LastSelectedActorInfo FHiderSelectedActorInfo
---@field AntiCheatDistanceRate number
---@field AntiCheatCapuleRate number
---@field AntiCheatPositionDis number
---@field AntiCheatTransCount number
---@field AntiCheatTransCounter number
---@field AntiCheatTransTimer number
---@field AntiCheatCapsuleSizeDev number
---@field bLockMovementMode boolean
---@field LockMovementMode EMovementMode
---@field CheckCapsuleTimerHandle FTimerHandle
---@field CheckCapsuleSizeTimerHandle FTimerHandle
---@field OnLockTransEvent_Server FHiderTransSelfDelegate
---@field OnUnLockTransEvent_Server FHiderTransSelfDelegate
---@field OnTransToShapeEvent_Client FHiderTransDelegate
---@field OnTransToDefaultShapeEvent_Client FHiderTransDelegate
---@field OnReciveSelectedActorInfo_Start FHiderTransDelegate
---@field OnReciveSelectedActorInfo FHiderTransDelegate
---@field ActorStaticMeshObjectPath FSoftObjectPath
---@field SetCameraParamDelayTime number
---@field SetCameraParamDelayTryCounts_Max number
---@field SetCameraParamDelayHandle FTimerHandle
local UHiderTransComponent = {}

function UHiderTransComponent:InitVariable() end

function UHiderTransComponent:ResetVariable() end

function UHiderTransComponent:OnControllerArrived() end

---@param PossessedPawn APawn
function UHiderTransComponent:OnControllerPossess(PossessedPawn) end

---@param bFromPersistentPool boolean
function UHiderTransComponent:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function UHiderTransComponent:OnRecycled(bToPersistentPool) end

function UHiderTransComponent:OnRecycled_BP() end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageTypeID number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UHiderTransComponent:OnDeath(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageTypeID, DamageTypeClass, IsHeadShotDamage, Context) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UHiderTransComponent:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end

function UHiderTransComponent:OnRep_SelectedActorInfo() end

---@param targetMesh UMeshComponent
function UHiderTransComponent:ChangeTargetMeshFX(targetMesh) end

---@param targetMesh UMeshComponent
function UHiderTransComponent:ResetTargetMeshFX(targetMesh) end

---@param newSpringLength number
---@param probeSize number
function UHiderTransComponent:SetCameraParam(newSpringLength, probeSize) end

---@param capsuleHeight number
---@param capsuleRadius number
function UHiderTransComponent:SetRootCapsuleSize(capsuleHeight, capsuleRadius) end

function UHiderTransComponent:RefreshRootCapsuleSize_Server() end

function UHiderTransComponent:CheckRootCapsuleSize_Server() end

---@param CollisionType ECollisionEnabled
function UHiderTransComponent:SetRootCapsuleCollision(CollisionType) end

---@param CollisionChannels FCollisionResponseContainer
---@param bCanFootStep boolean
function UHiderTransComponent:SetRootCapsuleCollisionChannels(CollisionChannels, bCanFootStep) end

---@param capsuleHeight number
---@param capsuleRadius number
function UHiderTransComponent:SetHitCapsuleSize(capsuleHeight, capsuleRadius) end

---@param CollisionType ECollisionEnabled
function UHiderTransComponent:SetStaticMeshCollision(CollisionType) end

---@param bMoveable boolean
---@param fMoveSpeed number
function UHiderTransComponent:SetMovementParam(bMoveable, fMoveSpeed) end

---@param SelectedActor AActor
function UHiderTransComponent:TransToTargetShape_Server(SelectedActor) end

function UHiderTransComponent:TransToDefaultShape_Server() end

function UHiderTransComponent:LockTransShape_Server() end

function UHiderTransComponent:OnLockTransShape_Server() end

function UHiderTransComponent:UnLockTransShape_Server() end

function UHiderTransComponent:OnUnLockTransShape_Server() end

---@param SelectedActor AActor
function UHiderTransComponent:OnTransToTargetShape_Server_BP(SelectedActor) end

function UHiderTransComponent:OnTransToDefaultShape_Server_BP() end

function UHiderTransComponent:OnLockTransShape_Server_BP() end

function UHiderTransComponent:OnUnLockTransShape_Server_BP() end

---@param SelectedActor AActor
---@return boolean
function UHiderTransComponent:OnTransToTargetShape_ValidateCondition_Server_BP(SelectedActor) end

---@param TarCapsuleRadius number
---@param TarCapsuleHalfHeight number
---@param bCheckRadius boolean
---@return boolean
function UHiderTransComponent:CheckCapsuleSizeIsOK(TarCapsuleRadius, TarCapsuleHalfHeight, bCheckRadius) end

function UHiderTransComponent:OnTransToTargetShape_Client() end

function UHiderTransComponent:OnTransToTargetShape_Client_BP() end

function UHiderTransComponent:OnTransToDefaultShape_Client() end

function UHiderTransComponent:OnTransToDefaultShape_Client_BP() end

function UHiderTransComponent:OnLockTransShape_Client() end

function UHiderTransComponent:OnLockTransShape_Client_BP() end

function UHiderTransComponent:OnUnLockTransShape_Client() end

function UHiderTransComponent:OnUnLockTransShape_Client_BP() end

function UHiderTransComponent:LoadStaticMeshCallBack() end

function UHiderTransComponent:SetCameraParamDelay() end
