---@meta

---@class USTCharacterMovementComponentBase: UCharacterMovementComponent
---@field CustomMovementMagagerClsPtr UCustomMovementManager
---@field CustomMovementMagagerClsHardRef UCustomMovementManager
---@field CustomMovementMagagerCls UCustomMovementManager
---@field SimulatorMovementProxy FSimulatorMovementProxy
---@field TickProxy FMovementComponentTickProxy
---@field WaitingForRegisterMovements ULuaArrayHelper<FCustomMovementRegisterInfo>
---@field bUseNewResolvePenetration boolean
---@field bNewResolvePenetrationSimulateMovementMeshNoSmooth boolean
---@field bUseUEComputeFloorDist boolean
---@field MovePhysicsInfo FMovePhysicsInfoData
---@field ApplyImpactPhysicsForcesCharacterMovementTickUsePostPhysics boolean
---@field AirControlOverride number
---@field bShouldSkipReplicateMovement boolean
---@field bEnableComponentKeepBaseCheck boolean
---@field OriginalPrimaryComponentTickGroup ETickingGroup
---@field MultiJumpCD number
---@field LastJumpTime number
---@field LandToJumpCD number
---@field AllowablePositionErrorDistSquared number
---@field bStrictCustomMovementServerPriority boolean
---@field bPersistentLandMode boolean
---@field bCanWalkInWater boolean
---@field LandTime number
---@field IgnoreFallingDamageCount number
---@field LastMoveHit FHitResult
---@field LastSweepFindFloorHit FHitResult
---@field LastMoveSmoothTime number
---@field LastTickTime number
---@field LastTickDeltaTime number
---@field LastTickWorldDeltaTime number
---@field LastMoveSmoothDeltaTime number
---@field LastMoveSmoothWorldDeltaTime number
---@field ServerMoveLogInfo FCharacterMoveLogInfo
---@field ClientMoveLogInfo FCharacterMoveLogInfo
---@field IgnoreCheckCanSetBase boolean @是否忽略CheckCanSetBase检测
---@field bAISimpleWalking boolean
---@field LastReceiveServerStateTimestamp number
---@field bCurrentPostLandedPhysics number
---@field LastApplyImpactPhysicsForcesFrame number
---@field CurFrameApplyImpactPhysicsForces ULuaMapHelper<UPrimitiveComponent, number>
---@field bSaveCustomovementManagerSoftPtrToHardRef boolean
local USTCharacterMovementComponentBase = {}

---@param bFromPersistentPool boolean
function USTCharacterMovementComponentBase:OnRespawned(bFromPersistentPool) end

---@param bToPersistentPool boolean
function USTCharacterMovementComponentBase:OnRecycled(bToPersistentPool) end

---@param _CustomMovementMode ECustomMovmentMode
---@param bEnable boolean
---@param bExitCurrentMovemode boolean
function USTCharacterMovementComponentBase:SetCustomMovementEnable(_CustomMovementMode, bEnable, bExitCurrentMovemode) end

---@param _CustomMovementMode ECustomMovmentMode
---@param CustomMovementCls UCustomMovementBase
---@param SkillID number
function USTCharacterMovementComponentBase:RegisterCustomMovement(_CustomMovementMode, CustomMovementCls, SkillID) end

---@param _CustomMovementMode ECustomMovmentMode
function USTCharacterMovementComponentBase:UnRegisterCustomMovement(_CustomMovementMode) end

---@param Tag FGameplayTag
---@param bEnable boolean
---@param bExitCurrentMovemode boolean
function USTCharacterMovementComponentBase:SetCustomMovementEnableByTag(Tag, bEnable, bExitCurrentMovemode) end

---@param Tag FGameplayTag
---@param CustomMovementCls UCustomMovementBase
---@param SkillID number
function USTCharacterMovementComponentBase:RegisterCustomMovementByTag(Tag, CustomMovementCls, SkillID) end

---@param Tag FGameplayTag
function USTCharacterMovementComponentBase:UnRegisterCustomMovementByTag(Tag) end

---@param Tag FGameplayTag
---@return ECustomMovmentMode
function USTCharacterMovementComponentBase:GetCustomMovementModeByTag(Tag) end

---@param _CustomMovementMode ECustomMovmentMode
---@return FGameplayTag
function USTCharacterMovementComponentBase:GetTagByCustomMovementMode(_CustomMovementMode) end

---@param bValue boolean
function USTCharacterMovementComponentBase:SetStrictCustomMovementServerPriority(bValue) end

---@return boolean
function USTCharacterMovementComponentBase:IsStrictCustomMovementServerPriority() end

---@return boolean
function USTCharacterMovementComponentBase:IsUseNewResolvePenetrationImpl() end

---@param Actor AActor
---@return boolean
function USTCharacterMovementComponentBase:IsOpenSaveLastSweepFindFloorHit(Actor) end

---@param Actor AActor
---@return boolean
function USTCharacterMovementComponentBase:IsBoxPushStaticPawn(Actor) end

---@return boolean
function USTCharacterMovementComponentBase:TryResolveMultiPenetration() end

---@param Hit FHitResult
---@param NewRotation FQuat
---@return boolean
function USTCharacterMovementComponentBase:CapsuleResolvePenetrationByHit(Hit, NewRotation) end

function USTCharacterMovementComponentBase:LastSweepFindFloorHitResolvePenetration() end

---@param OutHit FHitResult
---@param CapsuleLocation FVector
---@param DwonLineDistance number
---@param bDwonLineAddShrinkHeight boolean
---@return boolean
function USTCharacterMovementComponentBase:FindDownTest(OutHit, CapsuleLocation, DwonLineDistance, bDwonLineAddShrinkHeight) end

---@param OutHits ULuaArrayHelper<FHitResult>
---@param CapsuleLocation FVector
---@param DwonLineDistance number
---@param RotationQuat FQuat
---@param bDwonLineAddShrinkHeight boolean
---@return boolean
function USTCharacterMovementComponentBase:FindDownMultiTest(OutHits, CapsuleLocation, DwonLineDistance, RotationQuat, bDwonLineAddShrinkHeight) end

---@return boolean
function USTCharacterMovementComponentBase:JumpCDOk() end

---@param DistanceSuared number
function USTCharacterMovementComponentBase:SetAllowablePositionErrorDistSquared(DistanceSuared) end

---@param NewCustomLandMovemode ECustomMovmentMode
---@param bPersistent boolean
function USTCharacterMovementComponentBase:SetCustomLandMoveMode(NewCustomLandMovemode, bPersistent) end

---@return boolean
function USTCharacterMovementComponentBase:CanWalkInWater() end

---@param Value boolean
function USTCharacterMovementComponentBase:SetCanWalkInWater(Value) end

---@param Value number
function USTCharacterMovementComponentBase:SetIgnoreFallingDamageCount(Value) end

---@return string
function USTCharacterMovementComponentBase:GetDebugState() end

---@param Name string
---@param MaxRecordCount number
function USTCharacterMovementComponentBase:StartLogRecord(Name, MaxRecordCount) end

function USTCharacterMovementComponentBase:StopLogRecord() end

---@return number
function USTCharacterMovementComponentBase:GetMoveSmoothTimeSpace() end

---@param TheCharacter ACharacter
function USTCharacterMovementComponentBase:RequestServerMoveDebugInfo(TheCharacter) end

---@param TheCharacter ACharacter
---@param MoveLogInfo FCharacterMoveLogInfo
function USTCharacterMovementComponentBase:SyncServerMoveDebugInfo(TheCharacter, MoveLogInfo) end

---@param MoveLogInfo FCharacterClientMoveLogInfo
function USTCharacterMovementComponentBase:SyncClientMoveDebugInfo(MoveLogInfo) end

---@param Info FImportantMoveLogInfo
function USTCharacterMovementComponentBase:ClientPrintImportantLog(Info) end

---SpecificCustomMovementMode 参考 ECustomMovmentMode定义
---@param SpecificCustomMovementMode number
---@return boolean
function USTCharacterMovementComponentBase:IsSpecificCustomMovementMode(SpecificCustomMovementMode) end

---检查是否可以设置新的Base 用于防止在动态物体上，由于互相挤导致玩家base切换，从而引起抖动问题
---@param NewBase UPrimitiveComponent
---@return boolean
function USTCharacterMovementComponentBase:CheckCanSetBase(NewBase) end

---检查Base是否需要清空 用于处理角色在动态平台上下落时是否需要清空Base
function USTCharacterMovementComponentBase:CheckBaseIsClear() end

---检查并清空Base
---@param bForce boolean
---@param bFromCharacter boolean
---@return boolean
function USTCharacterMovementComponentBase:CheckAndClearBase(bForce, bFromCharacter) end

---检查当前是否在可移动平台上
---@return boolean
function USTCharacterMovementComponentBase:CheckOnMoveablePlatform() end

---@param Value boolean
function USTCharacterMovementComponentBase:SetAISimpleWalking(Value) end
