---@meta

---@class FDoorRotationMoation
---@field IgnoreMotionState boolean
---@field bIsActive boolean
---@field bIsExDoor boolean
---@field FromState number
---@field ToState number
---@field RotationFrom number
---@field RotationTo number
---@field RotationCurrent number
---@field RotationTime number
---@field RotationLerpTime number
---@field RotationCurrentTime number
---@field RotationCurrentLerpTime number
---@field DoorMesh UStaticMeshComponent
FDoorRotationMoation = {}


---@class APUBGDoor: AUAEDoorActor, IDamageableInterface, IActorHiddenInterface, IInteractorInterface
---@field bDebugDraw boolean
---@field autoOpenDistanceSquared number
---@field autoOpenAngel number
---@field forwardSpeedRatio number
---@field bHideButtons boolean
---@field DoorState number
---@field DoorBroken boolean
---@field DoorOperateTime number @<开门动画实际的表示时间，不是TimeLine的时长而是用户看到的时长
---@field bDoubleDoor boolean
---@field DoorStateEx number
---@field DoorBrokenEx boolean
---@field bUseDoorWaitPush boolean @<是否让门在打开时忽略角色，并在打开之后对与门重叠的角色进行修正。
---@field bForceNoWaitPush boolean @是否强制关闭门关闭碰撞并在结束移动时推人的操作 bUseDoorWaitPush会受全局consolevar的控制，所以通过这个开关来单独调整
---@field OnDoorAniFinsihDelegate FOnDoorAniFinsihDelegate
---@field OnDoorStateChange FOnDoorStateChange
---@field DamageableGameObjectTypeList ULuaArrayHelper<EDamageableGameObjectType>
---@field bUseDelayDoorAng boolean @<打开门超过某个角度后在关闭与角色碰撞的逻辑
---@field fDoorDelayAng number @<门超过这个角度之后再关闭碰撞
---@field NetCullingDistanceOnVeryLowDevice number
---@field bCompilerCheckMeshLocation boolean
---@field bAutoSetPosAndExtent boolean
---@field SimulateBoxOrigin FVector
---@field SimulateBoxOriginEx FVector
---@field SimulateBoxExtent FVector
---@field SimulateTriggerBoxExtent FVector
---@field SimulateTriggerBoxCenter FVector
---@field DebugDrawShape boolean
---@field IgnoreMotionState boolean
---@field DebugDrawShapeTime number
---@field RCRBoxIndex number
---@field ParentActor AActor
---@field bAutoOpenTriggered boolean
---@field bAutoOpenStated boolean
---@field bTriggeredDoor boolean
---@field bAutoOpenTriggeredEx boolean
---@field bAutoOpenStatedEx boolean
---@field bTriggeredDoorEx boolean
---@field WeakPlayerCharacter ACharacter
---@field autoOpenAngelCosinValue number
---@field DelayUnRegisterHandle FTimerHandle
---@field DelayUnRegisterTime number
---@field Islocked boolean
---@field NeedShowUI boolean
---@field IsAutoOpenLinkage boolean
---@field IsOpenLinkage boolean
---@field IsLockAutoOpen boolean
---@field NeedDestroyChildActorCom boolean
---@field NeedRefreshForCook boolean
---@field MappingID number
---@field DoorNameHashCode number
---@field DoorNameHashCode64 number
---@field DoorAppendLevelName string
---@field HitBlockBigRepDisSq number
---@field bIsHitBlockBigRepDisSq boolean
---@field BigRepDisControllerList ULuaArrayHelper<ASTExtraPlayerController>
---@field IsUGCMobileDoor boolean
---@field DoorMationList ULuaArrayHelper<FDoorRotationMoation>
---@field DoorInteractAction FInteractBehaviorWrapper
---@field InteractTime number
---@field InteractInterval number
---@field InteractDistanceSq number
local APUBGDoor = {}

---@param character APawn
---@return boolean
function APUBGDoor:IsInRoom(character) end

---@param interactionBox UBoxComponent
---@param doorMesh UStaticMeshComponent
---@param inDoubleDoor boolean
---@param interactionBoxEx UBoxComponent
---@param doorMeshEx UStaticMeshComponent
function APUBGDoor:Init(interactionBox, doorMesh, inDoubleDoor, interactionBoxEx, doorMeshEx) end

---Force actor to be updated to clients
function APUBGDoor:ForceNetUpdate() end

function APUBGDoor:OnRep_RepDoorStateEx() end

function APUBGDoor:OnRep_RepDoorBrokenEx() end

---@param activatedComp UPrimitiveComponent
---@param otherActor AActor
---@param otherComp UPrimitiveComponent
---@param otherBodyIndex number
---@param bFromSweep boolean
---@param sweepResult FHitResult
function APUBGDoor:OnBeginOverlapEx(activatedComp, otherActor, otherComp, otherBodyIndex, bFromSweep, sweepResult) end

---@param activatedComp UPrimitiveComponent
---@param otherActor AActor
---@param otherComp UPrimitiveComponent
---@param otherBodyIndex number
function APUBGDoor:OnEndOverlapEx(activatedComp, otherActor, otherComp, otherBodyIndex) end

---<根据门的状态来变更门与玩家的碰撞开关
---@param InPawnEnabled boolean
---@param extraDoor boolean
function APUBGDoor:Refresh_DoorCollisionChanel(InPawnEnabled, extraDoor) end

---<门动画结束时进行调用
---@param InDoorMesh UStaticMeshComponent
---@param extraDoor boolean
function APUBGDoor:On_DoorAniFinsihNew(InDoorMesh, extraDoor) end

---<刷新门的状态
---@param InIsExDoor boolean
---@param InDoorAng number
function APUBGDoor:Refresh_DoorIgnore(InIsExDoor, InDoorAng) end

---@param character ACharacter
---@param extraDoor boolean
---@param bSyncAction boolean
function APUBGDoor:OpenDoorBy(character, extraDoor, bSyncAction) end

---@param character ACharacter
---@param extraDoor boolean
---@param bSyncAction boolean
function APUBGDoor:CloseDoorBy(character, extraDoor, bSyncAction) end

---@param inRoom boolean
---@param extraDoor boolean
function APUBGDoor:OpenDoorByParam(inRoom, extraDoor) end

---@param character APawn
---@param bAimingExtraDoor boolean
function APUBGDoor:OnDoorRPC(character, bAimingExtraDoor) end

---@param bExtraDoor boolean
---@param brokenCauser AActor
function APUBGDoor:SetDoorBroken(bExtraDoor, brokenCauser) end

function APUBGDoor:OnRep_RepDoorState() end

function APUBGDoor:OnRep_RepDoorBroken() end

---@param doorStateDst number
---@param bExtraDoor boolean
function APUBGDoor:ActionDoorOnClient(doorStateDst, bExtraDoor) end

---@param doorStateDst number
---@param bExtraDoor boolean
function APUBGDoor:ActionDoorImmediatly(doorStateDst, bExtraDoor) end

---@param isBeginPlay boolean
---@param bExtraDoor boolean
function APUBGDoor:BP_DoorBroken(isBeginPlay, bExtraDoor) end

---@param isBeginPlay boolean
---@param bExtraDoor boolean
function APUBGDoor:BP_DoorBroken_Callback(isBeginPlay, bExtraDoor) end

---@param activatedComp UPrimitiveComponent
---@param otherActor AActor
---@param otherComp UPrimitiveComponent
---@param otherBodyIndex number
---@param bFromSweep boolean
---@param sweepResult FHitResult
function APUBGDoor:OnBeginOverlap(activatedComp, otherActor, otherComp, otherBodyIndex, bFromSweep, sweepResult) end

---@param activatedComp UPrimitiveComponent
---@param otherActor AActor
---@param otherComp UPrimitiveComponent
---@param otherBodyIndex number
function APUBGDoor:OnEndOverlap(activatedComp, otherActor, otherComp, otherBodyIndex) end

---@param IsEx boolean
function APUBGDoor:SetDoorTriggerFalse(IsEx) end

function APUBGDoor:RefreshUIOnClient() end

function APUBGDoor:ResetUIOnClient() end

function APUBGDoor:GetDamageableGameObjectType() end

---@param IsEx boolean
---@return boolean
function APUBGDoor:IsTriggerDoor(IsEx) end

---@param InDoorMesh UStaticMeshComponent
---@param InMultVal number
function APUBGDoor:SimulateOverlapCharacter(InDoorMesh, InMultVal) end

function APUBGDoor:UpdateTickfunction() end

function APUBGDoor:OnRep_RepNeedShowUI() end

---@param InIsExDoor boolean
---@param InState number
function APUBGDoor:SetDoorMation(InIsExDoor, InState) end

---@param DeltaSeconds number
function APUBGDoor:TickDoorMotion(DeltaSeconds) end

---@param InLock boolean
function APUBGDoor:SetDoorLock(InLock) end

---@param InNeedShowUI boolean
function APUBGDoor:SetDoorNeedShowUI(InNeedShowUI) end

---@param IsExDoor boolean
---@return boolean
function APUBGDoor:IsDoorOpened(IsExDoor) end

---@return boolean
function APUBGDoor:IsAnyDoorOpened() end

function APUBGDoor:BroadcastDoorStateToAllPlayer() end

---@return string
function APUBGDoor:GetDoorMappingName() end

---@return string
function APUBGDoor:GetAppendLevelName() end

---@return number
function APUBGDoor:GetDoorNameHashCode() end

---@param InController ASTExtraPlayerController
function APUBGDoor:AddHitBlockBigRepDis(InController) end

---@param InController ASTExtraPlayerController
function APUBGDoor:RemoveHitBlockBigRepDis(InController) end

---@param InSet boolean
function APUBGDoor:SetHitBlockNetRelevantDis(InSet) end

---@param InMesh UStaticMeshComponent
---@param InIsExDoor boolean
---@param InState number
function APUBGDoor:InsertDoorMation(InMesh, InIsExDoor, InState) end

---@return boolean
function APUBGDoor:IsMoationActive() end

---@param InIsExDoor boolean
---@param OutState number
---@return boolean
function APUBGDoor:GetMoationState(InIsExDoor, OutState) end
