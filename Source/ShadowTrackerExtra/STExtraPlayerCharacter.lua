---@meta

---@class ETestAvgPingDataType
---@field NotValid number
---@field Replicated number
---@field ReliableRPC number
---@field UnReliableRPC number
ETestAvgPingDataType = {}


---@class EPlayerPartyDanceState
---@field EPPDS_NONE number
---@field EPPDS_SINGLE number
---@field EPPDS_DUO number
---@field EPPDS_QUAD number
EPlayerPartyDanceState = {}


---@class EAngledSightType
---@field Switch number
---@field AngledSight number
---@field NormalSight number
---@field NormalWeaponSight number
EAngledSightType = {}


---@class EFRRSerializeFlag
---@field EFRR_V number
---@field EFRR_LOC number
---@field EFRR_ROT number
---@field EFRR_MOVEMODE number
---@field EFRR_TOTALFIXED number
---@field EFRR_BASEACTOR number
---@field EFRR_BASECMP number
---@field EFRR_BASE_HEADER number
---@field EFRR_BASE_NGUID number
---@field EFRR_TARGETACTOR_NGUID number
---@field EFRR_MOVEINPUTSTATE number
---@field EFRR_CPXSTATE number
---@field EFRR_MELEEINF number
---@field EFRR_ROEMTEVIEWPITCH number
---@field EFRR_TOTALEND number
---@field EFRR_NONE number
---@field EFRR_ALL number
EFRRSerializeFlag = {}


---@class EFRR_TYPE
---@field EFRR_TYPE_RBASEDMOVE number
---@field EFRR_TYPE_RMOVE number
---@field EFRR_TYPE_NONE number
EFRR_TYPE = {}


---@class FConsumableData
---@field HealthPriority1 number
---@field HealthPriority2 number
---@field HealthPriority3 number
---@field SignalPriority1 number
---@field SignalPriority2 number
---@field SignalPriority3 number
---@field ConsumableSortTime number
FConsumableData = {}


---@class FCharacterParachuteSubAnimMapItem
---@field CharacterParachuteSubAnim ULuaMapHelper<string, USkirtAnimInstanceBase>
---@field CharacterParachuteSubAnimStr ULuaMapHelper<string, string>
FCharacterParachuteSubAnimMapItem = {}


---@class FActicityDisallowedData
---@field DisallowedStates ULuaArrayHelper<EPawnState>
---@field ActivityID number
FActicityDisallowedData = {}


---@class FCustomVoiceGroup
---@field bIsEnabled boolean
---@field VoicePosition FVector
---@field ID number
FCustomVoiceGroup = {}


---@class FPartyDance
---@field MontageToPlay UAnimMontage
---@field MontageToPlay_FPP UAnimMontage
---@field ItemMontageMap ULuaMapHelper<number, UAnimMontage>
---@field ItemMontageMap_FPP ULuaMapHelper<number, UAnimMontage>
FPartyDance = {}


---@class FTestAvgPingData
---@field Type number
---@field bEnableLog boolean
---@field ClientSendIndex number
---@field ServerReceiveIndex number
---@field ClientSendTime number
---@field ServerReceiveTime number
---@field ValueArrays ULuaArrayHelper<number>
FTestAvgPingData = {}


---@class FPartyDanceStateData
---@field DanceState EPlayerPartyDanceState
---@field Montage FSoftObjectPath
FPartyDanceStateData = {}


---@class FLaunchCharacterSyncData
---@field CurrVel FVector
---@field bIsLaunchging boolean
---@field NewMovementMode EMovementMode
---@field Duration number
FLaunchCharacterSyncData = {}


---@class FChooserActorInfo
---@field ChooseDistance number
FChooserActorInfo = {}


---@class FPawnChooserData
---@field MasterSwitchOn boolean
---@field EnabledGameModeID ULuaArrayHelper<string>
---@field DetectAngle number
---@field RotationOffset FRotator
---@field Classes ULuaArrayHelper<AActor>
---@field LocationOffset FVector
---@field DetectRaduis number
---@field TickInterval number
---@field EnableDebugDraw boolean
---@field IsConsideringVehicleBlock boolean
---@field HorizontalTestRatio number
---@field VerticalCoverRatio number
---@field DEBUGMODE boolean
---@field isSelectUIShowing boolean
---@field PreChooserInfos ULuaArrayHelper<FChooserActorInfo>
---@field isDebugTrainingUIBP boolean
FPawnChooserData = {}


---@class FAngledSightRepData
---@field AngledSightType EAngledSightType
---@field IsOnlyTurn boolean
---@field WeaponInstanceID number
FAngledSightRepData = {}


---@class FActivityAnimationRepData
FActivityAnimationRepData = {}


---@class FParachuteStateParams
---@field MinForwardForce number
---@field MaxForwardForce number
---@field DragForceFractor number
---@field MinPitchAngle number
---@field MaxPitchAngle number
---@field MinRollAngle number
---@field MaxRollAngle number
---@field MinForwardSpeed number @Min forward movement speed
---@field MaxForwardSpeed number
---@field MinRightSpeed number @Min right movement speed
---@field MaxRightSpeed number @Max right movement speed
---@field MinDownSpeed number @Min down movement speed
---@field MaxDownSpeed number @Max down movement speed
FParachuteStateParams = {}


---@class FTriggerLevelLoadProxy
---@field DeviceLevels ULuaArrayHelper<number>
---@field DeviceMemoryLevels ULuaArrayHelper<number>
FTriggerLevelLoadProxy = {}


---@class FFRRBesedMove
---@field bBasedCmpIsNotNUll number
---@field bBasedActorIsNotNUll number
---@field bStaticBase number
---@field bNetSpawn number
---@field BasedCmpPathHash number
---@field bisPendingClientNetGuid boolean
---@field bServerHasBaseComponent boolean @Whether the server says that there is a base. On clients, the component may not have resolved yet.
---@field bRelativeRotation boolean @Whether rotation is relative to the base or absolute. It can only be relative if location is also relative.
---@field bServerHasVelocity boolean @Whether there is a velocity on the server. Used for forcing replication when velocity goes to zero.
FFRRBesedMove = {}


---@class FMeleeCombatPhaseInfo_ForFRR
---@field PhaseIndex number
---@field bIsJumpingPhase number
---@field bFlag number
FMeleeCombatPhaseInfo_ForFRR = {}


---@class FRepMovementFRR
---@field MVType EFRR_TYPE
---@field LinearVelocity FVector
---@field Location FVector
---@field ReplicatedMovementMode number
---@field Rotation FRotator
---@field ReplicatedMoveInputState FVector
---@field ReplicatedCpxPawnState number
---@field ReplicatedPawnStateForDiff number
---@field RelicatedPoseStateForDiff number
---@field RelicatedPawnDisableStateForDiff number
---@field SerializeMask number
---@field BasedMove FFRRBesedMove
---@field bHasSerializedWrite boolean
---@field bMoveTypeChangded boolean
---@field MeleeCombatInf FMeleeCombatPhaseInfo_ForFRR
---@field RemoteViewPitch number
---@field ClientLastReplicatedPawnState number
---@field LastPoseState ESTEPoseState
---@field ClientLastReplicatedPawnDisableState number
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
---@field VelocityQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.
---@field RotationQuantizationLevel ERotatorQuantization @Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.
FRepMovementFRR = {}


---@class FLockSightData
---@field LockSightState number
FLockSightData = {}


---@class FSimulatedIndoorData
---@field ValidCacheDeltaDistSquared number
---@field ValidCacheTimeThreshold number
FSimulatedIndoorData = {}


---@class FOnActivityAnimationChanged : ULuaMulticastDelegate
FOnActivityAnimationChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewMontage: UAnimMontage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActivityAnimationChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewMontage UAnimMontage
function FOnActivityAnimationChanged:Broadcast(NewMontage) end


---@class FOnPlayerIndoorChanged : ULuaMulticastDelegate
FOnPlayerIndoorChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsIndoor: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerIndoorChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsIndoor boolean
function FOnPlayerIndoorChanged:Broadcast(IsIndoor) end


---@class FOnParachuteStateChanged : ULuaMulticastDelegate
FOnParachuteStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldState: EParachuteState, NewState: EParachuteState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnParachuteStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldState EParachuteState
---@param NewState EParachuteState
function FOnParachuteStateChanged:Broadcast(OldState, NewState) end


---@class FOnPreParachuteStateChanged : ULuaMulticastDelegate
FOnPreParachuteStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldState: EParachuteState, NewState: EParachuteState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreParachuteStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldState EParachuteState
---@param NewState EParachuteState
function FOnPreParachuteStateChanged:Broadcast(OldState, NewState) end


---@class FOnParachuteAnimSubInstanceNeedSwitch : ULuaMulticastDelegate
FOnParachuteAnimSubInstanceNeedSwitch = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bSwitchToParachute: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnParachuteAnimSubInstanceNeedSwitch:Add(Callback, Obj) end

---触发 Lua 广播
---@param bSwitchToParachute boolean
function FOnParachuteAnimSubInstanceNeedSwitch:Broadcast(bSwitchToParachute) end


---@class FOnRefreshParachuteAnim : ULuaSingleDelegate
FOnRefreshParachuteAnim = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRefreshParachuteAnim:Bind(Callback, Obj) end

---执行委托
function FOnRefreshParachuteAnim:Execute() end


---@class FPlayerHasPossessed : ULuaSingleDelegate
FPlayerHasPossessed = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerHasPossessed:Bind(Callback, Obj) end

---执行委托
function FPlayerHasPossessed:Execute() end


---@class FOnPlayerExitParachute : ULuaMulticastDelegate
FOnPlayerExitParachute = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerExitParachute:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
function FOnPlayerExitParachute:Broadcast(Character) end


---@class FLockSightDataChange : ULuaSingleDelegate
FLockSightDataChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLockSightDataChange:Bind(Callback, Obj) end

---执行委托
function FLockSightDataChange:Execute() end


---@class FOnSwitchSightAngled : ULuaMulticastDelegate
FOnSwitchSightAngled = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, type: number, IsOnlyTurn: boolean, InstanceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSwitchSightAngled:Add(Callback, Obj) end

---触发 Lua 广播
---@param type number
---@param IsOnlyTurn boolean
---@param InstanceID number
function FOnSwitchSightAngled:Broadcast(type, IsOnlyTurn, InstanceID) end


---@class ASTExtraPlayerCharacter: ASTExtraBaseCharacter
---@field OnHasPickupPropsAvailableChanged FOnHasPickupPropsAvailableChanged
---@field OnHasTombBoxesAvailableChanged FOnHasTombBoxesAvailableChanged
---@field OnSkillFinishedDelegate FOnSkillFinishedDelegate
---@field OnSkillStartDelegate FOnSkillStartDelegate
---@field OnScopeOutDelegate FOnScopeOutDelegate
---@field OnScopeInDelegate FOnScopeInDelegate
---@field OnChatacterPreScopeStateChangeDelegate FOnChatacterPreScopeStateChangeDelegate
---@field OnPlayerGetOnOffBigAirShipDelegate FOnPlayerGetOnOffBigAirShipDelegate
---@field OnBulletFlyThroughPlayerDelegate FOnBulletFlyThroughPlayerDelegate
---@field OnPlayerCharacterEventDelegate FPlayerCharacterEventDelegate
---@field OnGetOnVehicleDelegate FGetOnVehicleDelegate
---@field NightVisionComponentClass UNightVisionComponent
---@field IndoorCheckDistance number
---@field IndoorCheckTime number
---@field IndoorLowerCameraHeight number
---@field OnPlayerIndoorStateChangedEvent FOnPlayerIndoorChanged
---@field OnPlayerIndoorLowerStateChangedEvent FOnPlayerIndoorChanged
---@field ParachuteState EParachuteState
---@field LastParachuteState EParachuteState
---@field bJumpFromPlane boolean
---@field HaveToOpenHeightToGround number
---@field SwimZDir number
---@field AISimulatedIndoorData FSimulatedIndoorData
---@field SwimRotateX_Ex number
---@field bNeedUpdateSwimRotateX_Ex boolean
---@field bParachuteChangeMeshUpdateFlag boolean
---@field ParachuteOpeningMeshUpdateFlag EMeshComponentUpdateFlag
---@field EnterParachuteJump_PitchLimit string
---@field EnterParachuteOpen_PitchLimit string
---@field OnParachuteStateChangedDelegate FOnParachuteStateChanged
---@field OnPreParachuteStateChangedDelegate FOnPreParachuteStateChanged
---@field OnParachuteAnimSubInstanceNeedSwitch FOnParachuteAnimSubInstanceNeedSwitch
---@field OnRefreshParachuteAnimDelegate FOnRefreshParachuteAnim
---@field DelayResetParachuteAnimSubInstanceTime number
---@field DelayResetParachuteAnimSubInstanceTimer FTimerHandle
---@field ParachuteCloudAssestList ULuaArrayHelper<FSTParachuteCloudData>
---@field FreeFallSpringArmParam FSpringArmParams
---@field OpeningSpringArmParam FSpringArmParams
---@field TPPSpringArmParam FSpringArmParams
---@field FreeFallCamShake UCameraShake
---@field ParachuteClosePitch number
---@field ParachuteCloseRoll number
---@field bDisableSimulateCamera boolean
---@field VehicleForwardInputRate number
---@field VehicleRightInputRate number
---@field bDrawBoxEarBulletOverlapRay boolean
---@field bHasSendBulletFlyPassEarRPC boolean
---@field WeatherEffectEnabled ULuaMapHelper<EScreenParticleEffectType, boolean>
---@field bHasPickupPropsAvailable boolean
---@field bHasTombBoxesAvailable boolean
---@field LastPickUpUICheckTime number
---@field bHasCheckPickUpUI number
---@field bIsParachuteAnimBeingAsyncLoading boolean
---@field OnSwitchSightAngled FOnSwitchSightAngled
---@field IsLocalActuallyAngledSight boolean
---@field IsLocalActuallyScopeIn boolean
---@field AngledSightRepData FAngledSightRepData
---@field AngledSightClient FAngledSightRepData
---@field bDelayUpdateAngleSightAngle boolean
---@field OnPlayerHasPossessed FPlayerHasPossessed
---@field fSmallTickTimeOffset number
---@field fUpdateAngleSightTime number
---@field TrySightCorrectionTime number
---@field SightCorrectionDelay number
---@field IsStartObserverMainSightCorrection boolean
---@field IsStartObserverAngleSightCorrection boolean
---@field CurrentSightCorrectionTimes number
---@field isRecommendBattery boolean
---@field ShowDebugAnimNodeTypeList ULuaArrayHelper<string>
---@field ClientHUDStateCheckFrequency number
---@field CheckForActivityRange boolean
---@field PreConfiguredActivityDisallowedData ULuaArrayHelper<FActicityDisallowedData>
---@field CurrentActivityID number
---@field CurrentActivityIndex number
---@field bOpenPlatformGameFootEffect boolean
---@field PawnChooserData FPawnChooserData
---@field OnSelectedActorDelegate FOnSelectedActorDelegate
---@field ActivityAnimationRepData FActivityAnimationRepData
---@field PrevActivityAnimationRepData FActivityAnimationRepData
---@field PlayerPartyDanceState FPartyDanceStateData
---@field PartyDancingMontageMap ULuaMapHelper<EPlayerPartyDanceState, FPartyDance>
---@field DancePartyItemSubType number
---@field CurrentPlayingPartyDanceAnimation ULuaArrayHelper<UAnimMontage>
---@field OtherDancingPartner ASTExtraPlayerCharacter
---@field DanceParticleMap ULuaMapHelper<EPlayerPartyDanceState, UParticleSystem>
---@field DanceParticleMapOffset ULuaMapHelper<EPlayerPartyDanceState, FTransform>
---@field DanceParticleInstances ULuaMapHelper<EPlayerPartyDanceState, UParticleSystemComponent>
---@field WeaponManagerUsedPlayerRoleCacheFrameData FPlayerRoleCacheFrameData
---@field OnApplicationactivatedDelegate FOnApplicationactivatedDelegate
---@field ReplayEnemyFrameUI UMaterialBillboardComponent
---@field FootMarkComponent UStaticMeshComponent
---@field ThresholdHeight number
---@field FootMarkScaling number
---@field GreenMarkPath FSoftObjectPath
---@field BlueMarkPath FSoftObjectPath
---@field RedMarkPath FSoftObjectPath
---@field FootMarkMaterialPath FSoftObjectPath
---@field bHasIllegal boolean
---@field IllegalTime number
---@field OnChangebHasIllegalDegelate FOnChangebHasIllegalDelegate
---@field OnChangeSecMarkTypeDegelate FOnChangeSecMarkTypeDelegate
---@field DMATemplateID number
---@field DMAWidgetPos FVector
---@field AreaCheckTime number
---@field AreaEventID number
---@field AreaCheckDis number
---@field ReachAreaSet ULuaSetHelper<number>
---@field bIsBeginAreaCheck boolean
---@field bIgonreWeatherEffect boolean
---@field CustomVoiceChannel FCustomVoiceGroup @Avatar Info End
---@field bIsEnablePickup boolean
---@field OnActivityAnimationChanged FOnActivityAnimationChanged
---@field bIsOnBigAirShip boolean
---@field bFlyingUseFreeFalling boolean
---@field OnPlayerExitParachute FOnPlayerExitParachute
---@field bEnterDeferredPlaneAlive boolean
---@field bAllowLaunch boolean
---@field ExtraLauncherTargetLocationForValidation FVector
---@field ExtraLauncherStartLocationForValidation FVector
---@field ExtraTargetDist number
---@field ExtraLaunchalidRange number
---@field bExtraLaunching boolean
---@field ExtraLaunchTargetLocation FVector
---@field ExtraLaunchDuration number
---@field ExtraLaunchFallingDamageFactor number
---@field ExtraLaunchLengthValidator number
---@field TargetStateTypeCacheForReplay EStateType
---@field ReplayOPState FSyncPersionalOPInfo
---@field LockSightData FLockSightData
---@field LockSightDataChange FLockSightDataChange
---@field TestAvgPingData_RPC FTestAvgPingData
---@field TestAvgPingData_Replicated FTestAvgPingData
---@field TestNetArray ULuaArrayHelper<number>
---@field OutOfOrderArray ULuaArrayHelper<string>
---@field CharacterParachuteSubAnimMap ULuaMapHelper<number, FCharacterParachuteSubAnimMapItem>
---@field ConsumableData FConsumableData
---@field CheckDamageCauserUnVisibleIgnoreStates FGameplayTagContainer
---@field bHasReportUnVisibleException boolean
---@field bUseMRegionReplicated boolean
---@field bUseVehicleNavAgentLocation boolean
local ASTExtraPlayerCharacter = {}

---@param EventName string
function ASTExtraPlayerCharacter:NotifyPlayerCharacterEvent(EventName) end

---@param InActionStart boolean
function ASTExtraPlayerCharacter:OnScopeOutAction(InActionStart) end

---@param InActionStart boolean
function ASTExtraPlayerCharacter:OnScopeInAction(InActionStart) end

function ASTExtraPlayerCharacter:InitAirAttackLocatorComponent() end

---@param NewController AController
function ASTExtraPlayerCharacter:PossessedBy(NewController) end

---@param bActive boolean
function ASTExtraPlayerCharacter:ServerOnApplicationactivated(bActive) end

---@param LatestParachuteState EParachuteState
function ASTExtraPlayerCharacter:SyncLatestPlayerStatus(LatestParachuteState) end

---@return boolean
function ASTExtraPlayerCharacter:UserCancelSuicide() end

function ASTExtraPlayerCharacter:ClearHPUI() end

---@param Kills number
---@param Rank number
function ASTExtraPlayerCharacter:OnRank(Kills, Rank) end

---@param boneName string
---@return FVector
function ASTExtraPlayerCharacter:GetBonePos(boneName) end

function ASTExtraPlayerCharacter:DynamicCreateComponents() end

---@param FRRindex number
---@param InUserData ULuaArrayHelper<number>
function ASTExtraPlayerCharacter:SetFRRUserData(FRRindex, InUserData) end

---@param FRRIndex number
function ASTExtraPlayerCharacter:ClearFRRUserData(FRRIndex) end

---@param NewSwimRotateX number
function ASTExtraPlayerCharacter:SetSwimRotateX_Ex(NewSwimRotateX) end

---@return number
function ASTExtraPlayerCharacter:GetSwimRotateX_Ex() end

---@param state EParachuteState
function ASTExtraPlayerCharacter:OnRep_ParachuteState(state) end

---@param state EParachuteState
function ASTExtraPlayerCharacter:SetParachuteState(state) end

function ASTExtraPlayerCharacter:RefreshParachuteStateMeshUpdateFlag() end

function ASTExtraPlayerCharacter:EnterParachuteNone() end

function ASTExtraPlayerCharacter:EnterParachuteLanding() end

---@param TargetCharacter ASTExtraBaseCharacter
function ASTExtraPlayerCharacter:LeaveOBViewTargetOnParachute(TargetCharacter) end

---@param LaunchVelocity FVector
---@param bXYOverride boolean
---@param bZOverride boolean
function ASTExtraPlayerCharacter:LaunchParachute(LaunchVelocity, bXYOverride, bZOverride) end

function ASTExtraPlayerCharacter:DelayResetParachuteAnimSubInstance() end

---@param LocalAkEvent UAkAudioEvent
---@param RemoteAkEvent UAkAudioEvent
function ASTExtraPlayerCharacter:ParachutePlaySound(LocalAkEvent, RemoteAkEvent) end

function ASTExtraPlayerCharacter:StopCamShake() end

function ASTExtraPlayerCharacter:StartCamShake() end

function ASTExtraPlayerCharacter:FreeFallShakeCam() end

function ASTExtraPlayerCharacter:SwitchCameraToNormal() end

function ASTExtraPlayerCharacter:SwitchCameraFromParachuteOpeningToTPPBeginPlay() end

function ASTExtraPlayerCharacter:SwitchCameraFromParachuteOpeningToTPPStop() end

---@param alpha number
function ASTExtraPlayerCharacter:SwitchCameraFromParachuteOpeningToTPPUpdate(alpha) end

function ASTExtraPlayerCharacter:SwitchCameraFromParachuteOpeningToTPPFinish() end

function ASTExtraPlayerCharacter:SwitchCameraToParachuteOpening() end

function ASTExtraPlayerCharacter:SwitchCameraToParachuteFalling() end

---@param nearPlaneDistance number
function ASTExtraPlayerCharacter:StartUpdatingParachuteFallingCameraDistance(nearPlaneDistance) end

---@param alpha number
function ASTExtraPlayerCharacter:UpdateParachuteFallingCameraDistance(alpha) end

---@param nearPlaneDistance number
function ASTExtraPlayerCharacter:FinishUpdatingParachuteFallingCameraDistance(nearPlaneDistance) end

---@param alpha number
function ASTExtraPlayerCharacter:SwitchSpringArmFromParachuteOpeningToTPPUpdate(alpha) end

function ASTExtraPlayerCharacter:ChangeParachuteCharacterPitchBeginPlay() end

---@param alpha number
function ASTExtraPlayerCharacter:ChangeParachuteCharacterPitchTPPUpdate(alpha) end

---@param MinPitch number
---@param MaxPitch number
function ASTExtraPlayerCharacter:SetPitchViewAngle(MinPitch, MaxPitch) end

---@param PlayerCharacter ASTExtraPlayerCharacter
---@param InstigateWeapon ASTExtraShootWeapon
---@param FlySoundPos FVector
function ASTExtraPlayerCharacter:ServerSetBulletFlySoundData(PlayerCharacter, InstigateWeapon, FlySoundPos) end

---@param InstigateWeapon ASTExtraShootWeapon
---@param FlySoundPos FVector
function ASTExtraPlayerCharacter:ClientPlayEarSound(InstigateWeapon, FlySoundPos) end

---@param NewParam string
function ASTExtraPlayerCharacter:XmasStarHitServer(NewParam) end

---@param Name string
function ASTExtraPlayerCharacter:XmasStarHitMulti(Name) end

function ASTExtraPlayerCharacter:OnRep_STPlayerController() end

---@param _DeadTombBox APlayerTombBox
function ASTExtraPlayerCharacter:SyncDeadTombBoxToController(_DeadTombBox) end

function ASTExtraPlayerCharacter:TouchCancelSkillLock() end

---@param EntryEvent EUTSkillEntry
---@return boolean
function ASTExtraPlayerCharacter:ShouldTriggerEntryEvent(EntryEvent) end

---@param SkillItemID FItemDefineID
---@return boolean
function ASTExtraPlayerCharacter:ShouldDropBagItem(SkillItemID) end

---@return boolean
function ASTExtraPlayerCharacter:IsReplayViewTarget() end

---@return boolean
function ASTExtraPlayerCharacter:IsGrenadeEmpty() end

---@param BulletActor AActor
---@param HitResult FHitResult
---@param HitResults ULuaArrayHelper<FHitResult>
function ASTExtraPlayerCharacter:HandleBulletOverlap(BulletActor, HitResult, HitResults) end

---@param InstigatorCharacter ASTExtraBaseCharacter
---@param HitResult FHitResult
---@param HitResults ULuaArrayHelper<FHitResult>
function ASTExtraPlayerCharacter:HandleAIInstigateBulletOverlap(InstigatorCharacter, HitResult, HitResults) end

---@return boolean
function ASTExtraPlayerCharacter:IsLocalControlOrView() end

---@param isIndoor boolean
---@param ClientLoc FVector_NetQuantize
---@param MoveBase UPrimitiveComponent
function ASTExtraPlayerCharacter:ServerSetIndoorState(isIndoor, ClientLoc, MoveBase) end

---@param TargetStateType EStateType
function ASTExtraPlayerCharacter:HandleParachuteAnimChanged(TargetStateType) end

---@param bParam boolean
function ASTExtraPlayerCharacter:ParachuteAnimSubInstanceNeedSwitch(bParam) end

function ASTExtraPlayerCharacter:RequestLoadParachuteAnim() end

function ASTExtraPlayerCharacter:OnLoadParachuteAnimCompleted() end

function ASTExtraPlayerCharacter:DumpCharacterAnimBPVars() end

---@param MyAnimInstance USTExtraAnimInstance
---@return boolean
function ASTExtraPlayerCharacter:CanAnimInstanceCacheParachuteAnim(MyAnimInstance) end

---@param EffectType EScreenParticleEffectType
---@return boolean
function ASTExtraPlayerCharacter:IsWeatherEffectEnabled(EffectType) end

---@param EffectType EScreenParticleEffectType
---@param InEnable boolean
---@param InRainyEffectParam number
function ASTExtraPlayerCharacter:SetRainyEffectEnable(EffectType, InEnable, InRainyEffectParam) end

---@param EffectType EScreenParticleEffectType
---@param InRainyEffectParam number
function ASTExtraPlayerCharacter:SetRainyEffectParam(EffectType, InRainyEffectParam) end

---@param TargetStateType EStateType
function ASTExtraPlayerCharacter:OnPlayerControllerStateChanged(TargetStateType) end

---@param CharacterRotation FRotator
---@param isMoving boolean
---@param offset number
---@param deap number
function ASTExtraPlayerCharacter:ProneWithTerrain(CharacterRotation, isMoving, offset, deap) end

---@param SlotType number
---@param isEquipped boolean
function ASTExtraPlayerCharacter:OnAvatarEquippedSucc(SlotType, isEquipped) end

function ASTExtraPlayerCharacter:ShowNightVisionFrame() end

function ASTExtraPlayerCharacter:HideNightVisionFrame() end

---@param type EAngledSightType
---@param IsOnlyTurn boolean
function ASTExtraPlayerCharacter:SwitchSightAngled(type, IsOnlyTurn) end

---@param type EAngledSightType
---@param IsOnlyTurn boolean
function ASTExtraPlayerCharacter:SwitchSightAngledLocal(type, IsOnlyTurn) end

---@param type EAngledSightType
---@param IsOnlyTurn boolean
---@param InstanceID number
function ASTExtraPlayerCharacter:SwitchSightAngledServer(type, IsOnlyTurn, InstanceID) end

function ASTExtraPlayerCharacter:OnRep_AngleSightStateChanged() end

function ASTExtraPlayerCharacter:BeginUpdateAngleSightAngle() end

---@param InDeltaTime number
---@param InDuration number
function ASTExtraPlayerCharacter:UpdateAngleSightAngle(InDeltaTime, InDuration) end

---@param NeedSetCrossHair boolean
function ASTExtraPlayerCharacter:StopAngleSightAngle(NeedSetCrossHair) end

---@return boolean
function ASTExtraPlayerCharacter:IsUpdateAngleActiving() end

---@param SwitchColdDownTime number
function ASTExtraPlayerCharacter:StartSwitchColdDown(SwitchColdDownTime) end

---@param DeltaTime number
function ASTExtraPlayerCharacter:ClientHUDStateCheck(DeltaTime) end

function ASTExtraPlayerCharacter:OnBPStateCheckIn() end

---@param ExMsg string
function ASTExtraPlayerCharacter:OnMiniTreeTriggerServerLogicCPP(ExMsg) end

function ASTExtraPlayerCharacter:MiniTreeTriggerServerLogic_Multicast() end

---@param bCheckCanReceive boolean
---@return boolean
function ASTExtraPlayerCharacter:AllowTriggerActivities(bCheckCanReceive) end

---@return number
function ASTExtraPlayerCharacter:GetSkillIndexByActivityID() end

function ASTExtraPlayerCharacter:OnRep_ChangePlatformGameFootEffect() end

function ASTExtraPlayerCharacter:InitPawnChooser() end

---@param SelectedActorInfos ULuaArrayHelper<FChooserActorInfo>
function ASTExtraPlayerCharacter:OnActorSelected(SelectedActorInfos) end

---@param SelectedActor AActor
---@return boolean
function ASTExtraPlayerCharacter:IsSelectedMetCondition(SelectedActor) end

function ASTExtraPlayerCharacter:OnRep_ActivityAnimationRepData() end

function ASTExtraPlayerCharacter:RefreshActivityAnimation() end

---@param bShoulderMode boolean
function ASTExtraPlayerCharacter:ReqSetShoulderCameraMode(bShoulderMode) end

---@param bShoulderMode boolean
function ASTExtraPlayerCharacter:MulticastSetShoulderCameraMode(bShoulderMode) end

---@param Duration number
function ASTExtraPlayerCharacter:DisableFallingDamageForPerioud(Duration) end

function ASTExtraPlayerCharacter:OnRep_PlayerPartyDanceState() end

---@param InMontage UAnimMontage
function ASTExtraPlayerCharacter:OnPartyDanceAnimationLoaded(InMontage) end

---@param ActivityID number
function ASTExtraPlayerCharacter:GetDisallowedStates(ActivityID) end

---@param bMoveable boolean
function ASTExtraPlayerCharacter:SetActorMoveable(bMoveable) end

---@return boolean
function ASTExtraPlayerCharacter:ReplayCreateEnemyFrameUI() end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraPlayerCharacter:HideFootMark(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraPlayerCharacter:ShowFootMark(InVehicle) end

function ASTExtraPlayerCharacter:InitFootMarkColor() end

---@param InPlayerState ASTExtraPlayerState
function ASTExtraPlayerCharacter:OnRepPlayerState(InPlayerState) end

---@param LastVehicle ASTExtraVehicleBase
function ASTExtraPlayerCharacter:HandleTrailDetachVehicle(LastVehicle) end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraPlayerCharacter:HandleTrailAttachVehicle(InVehicle) end

---@param bCreate boolean
function ASTExtraPlayerCharacter:InitForEagleWatch(bCreate) end

---@param bIllegal boolean
function ASTExtraPlayerCharacter:SetHasIllegal(bIllegal) end

function ASTExtraPlayerCharacter:OnRep_bHasIllegal() end

---@param bIllegal boolean
function ASTExtraPlayerCharacter:AddIllegalBuff(bIllegal) end

function ASTExtraPlayerCharacter:TryRemoveDMAMark() end

---@param NewParam ASTExtraShootWeapon
---@return FRotator
function ASTExtraPlayerCharacter:GetAngledSightRotator(NewParam) end

function ASTExtraPlayerCharacter:RefreshAllAvatarVisibilityForBeObserved() end

function ASTExtraPlayerCharacter:RefreshAllAvatarVisibilityForBeObservedFinish() end

---@param InAdaptWeaponSlot ESurviveWeaponPropSlot
function ASTExtraPlayerCharacter:RefreshBackWeaponAttachForBoneRetarget(InAdaptWeaponSlot) end

---@param InWeaponSlot ESurviveWeaponPropSlot
---@param InWeaponID number
---@param InLevel number
---@param InSideType number
---@param OutAdaptTransform FTransform
---@return boolean
function ASTExtraPlayerCharacter:TryGetBackWeaponAdaptRelativeTransform(InWeaponSlot, InWeaponID, InLevel, InSideType, OutAdaptTransform) end

---当前仅开放给Server端调用，客户端会返回空的列表
---@param IncludeHiddenAvatar boolean
function ASTExtraPlayerCharacter:GetPlayerCurWearIDList(IncludeHiddenAvatar) end

---当前仅开放给Server端调用，客户端会返回空的列表
---@param IncludeHiddenAvatar boolean
function ASTExtraPlayerCharacter:GetPlayerCurWearDefineIDList(IncludeHiddenAvatar) end

---@param IsEnable boolean
function ASTExtraPlayerCharacter:EnablePickUp(IsEnable) end

function ASTExtraPlayerCharacter:OnRep_IsEnablePickup() end

---@return boolean
function ASTExtraPlayerCharacter:ShouldSetRotation() end

---@param Ship AActor
---@param bOn boolean
function ASTExtraPlayerCharacter:HandlePlayerGetOnOffBigAirShip(Ship, bOn) end

---@return boolean
function ASTExtraPlayerCharacter:IsHoldAimButton() end

---@param InTargetLocation FVector
---@param Duration number
function ASTExtraPlayerCharacter:C2S_ExtraLaunchCharacter(InTargetLocation, Duration) end

---@param InTargetLocation FVector
---@param InStartLocationLocation FVector
---@param InAllowLaunch boolean
function ASTExtraPlayerCharacter:ServerPreSetExtraJump(InTargetLocation, InStartLocationLocation, InAllowLaunch) end

---@param InTargetLocation FVector
---@return boolean
function ASTExtraPlayerCharacter:CanPerformExtraLaunch(InTargetLocation) end

---@param bClearVelocity boolean
function ASTExtraPlayerCharacter:C2S_ExtraLaunchCharacter_Stop(bClearVelocity) end

---@param InTargetLocation FVector
---@param Duration number
function ASTExtraPlayerCharacter:ExtraLaunchCharacter(InTargetLocation, Duration) end

---@param bClearVelocity boolean
function ASTExtraPlayerCharacter:ExtraLaunchCharacter_Stop(bClearVelocity) end

---@param bClearVelocity boolean
function ASTExtraPlayerCharacter:S2C_ExtraLaunchCharacter_ServerForceStop(bClearVelocity) end

---@param bClearVelocity boolean
function ASTExtraPlayerCharacter:ExtraLaunchCharacter_ServerForceStop(bClearVelocity) end

---@param InTargetLocation FVector
---@param Duration number
function ASTExtraPlayerCharacter:SetupExtraLaunch(InTargetLocation, Duration) end

---@param bClearVelocity boolean
function ASTExtraPlayerCharacter:SetupExtraLaunch_Stop(bClearVelocity) end

---@param ExpectDuration number
---@param OutRealLaunchTime number
---@return FVector
function ASTExtraPlayerCharacter:CalculateExtraLaunchVelocity(ExpectDuration, OutRealLaunchTime) end

---@param NewPersonalOP FSyncPersionalOPInfo
function ASTExtraPlayerCharacter:ServerRPC_UploadPersionalOp(NewPersonalOP) end

function ASTExtraPlayerCharacter:OnRep_ReplayOPState() end

---@param LastFollowState EFollowState
function ASTExtraPlayerCharacter:OnRep_FollowState(LastFollowState) end

function ASTExtraPlayerCharacter:ServerMoveIgnoreCharacter() end

---@param bWantsIgnore boolean
---@param bIgnoreTeammate boolean
---@param bIgnoreEnemy boolean
function ASTExtraPlayerCharacter:MoveIgnoreCharacter(bWantsIgnore, bIgnoreTeammate, bIgnoreEnemy) end

---@param bWantsIgnore boolean
---@param bIgnoreTeammate boolean
---@param bIgnoreEnemy boolean
function ASTExtraPlayerCharacter:MoveIgnoreVehicle(bWantsIgnore, bIgnoreTeammate, bIgnoreEnemy) end

function ASTExtraPlayerCharacter:OnRep_LockSightData() end

---@param InLockState number
---@param InLockTarget ASTExtraCharacter
function ASTExtraPlayerCharacter:ServerRPC_UpdateLockSightData(InLockState, InLockTarget) end

---@return ECharacterGender
function ASTExtraPlayerCharacter:GetAvatarSuitGender() end

---@return boolean
function ASTExtraPlayerCharacter:IsSuitGenderEnable_Implementation() end

---@param NewParachuteState EParachuteState
---@param CurParachuteState EParachuteState
function ASTExtraPlayerCharacter:EnterParachuteState_BigWorld(NewParachuteState, CurParachuteState) end

---@param ProjectileNames ULuaArrayHelper<string>
---@param Radius number
---@param bUseCache boolean
---@return boolean
function ASTExtraPlayerCharacter:HasProjectilesNearby(ProjectileNames, Radius, bUseCache) end

---@return string
function ASTExtraPlayerCharacter:GetLuaModule() end

---@param InType number
---@param InArraySize number
---@param InDeltaTime number
function ASTExtraPlayerCharacter:OnceTestAvgPing(InType, InArraySize, InDeltaTime) end

---@param bActive boolean
---@param InDeltaTime number
function ASTExtraPlayerCharacter:AutoTestAvgPing(bActive, InDeltaTime) end

function ASTExtraPlayerCharacter:TestMessageBox() end

function ASTExtraPlayerCharacter:OnRep_TestAvgPing() end

---@param InData FTestAvgPingData
function ASTExtraPlayerCharacter:RPC_Client_TestAvgPing(InData) end

---@param InData FTestAvgPingData
function ASTExtraPlayerCharacter:UnRPC_Client_TestAvgPing(InData) end

---@param InType number
---@param InClientSendIndex number
---@param InArraySize number
---@param InClientSendTime number
---@param bEnableLog boolean
function ASTExtraPlayerCharacter:RPC_Server_TestAvgPing(InType, InClientSendIndex, InArraySize, InClientSendTime, bEnableLog) end

---测试上行不需输入 server cmd 测试下行需输入   server cmd bReliableRPC 0: UnReliable RPC 1: Reliable RPC 2: Property Replicate 3: Open
---@param bEnable boolean
---@param bForceFlushNet boolean
---@param Type number
---@param ConstArraySize number
---@param ConstArrayInitNum number
---@param IncrementArrayNum number
---@param TimeDelta number
---@param ClearTimeDelta number
function ASTExtraPlayerCharacter:AutoTestNetFlow(bEnable, bForceFlushNet, Type, ConstArraySize, ConstArrayInitNum, IncrementArrayNum, TimeDelta, ClearTimeDelta) end

function ASTExtraPlayerCharacter:OnRep_TestNetArray() end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerCharacter:TestNetFlowServerRPC_UnReliable(TestArray) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerCharacter:TestNetFlowServerRPC_Reliable(TestArray) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerCharacter:TestNetFlowClientRPC_UnReliable(TestArray) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerCharacter:TestNetFlowClientRPC_Reliable(TestArray) end

---测试上行不需输入 server cmd 测试下行需输入   server cmd bReliableRPC 0: UnReliable RPC 1: Reliable RPC 2: Property Replicate 3: Open
---@param bEnable boolean
---@param PacketNum number
---@param ArrayMinSize number
---@param ArrayMaxSize number
function ASTExtraPlayerCharacter:AutoTestLossPkgRate(bEnable, PacketNum, ArrayMinSize, ArrayMaxSize) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerCharacter:TestLossPkgRate_ServerRPC_UnReliable(TestArray) end

---@param TestArray ULuaArrayHelper<number>
function ASTExtraPlayerCharacter:TestLossPkgRate_ClientRPC_UnReliable(TestArray) end

function ASTExtraPlayerCharacter:OnRep_OutOfOrderArray() end

---@return boolean
function ASTExtraPlayerCharacter:PutOnForTwins() end

function ASTExtraPlayerCharacter:ServerPutOnForTwins() end

---@return boolean
function ASTExtraPlayerCharacter:CheckCanSwitchTwins() end

function ASTExtraPlayerCharacter:HandleCharacterParachuteSubAnim() end

---@param SubAnimFSoftObjectPath FSoftObjectPath
---@param InAsyncLoadID number
function ASTExtraPlayerCharacter:OnAsyncLoadParachuteSubAnim(SubAnimFSoftObjectPath, InAsyncLoadID) end

---根据事件名称触发流光系统
---@param InEventName string
---@param InAvatarSlotType EAvatarSlotType
function ASTExtraPlayerCharacter:TriggerFlowLightEvent(InEventName, InAvatarSlotType) end

---@param OldState EParachuteState
---@param NewState EParachuteState
function ASTExtraPlayerCharacter:BattleFieldSlowTickParachuteEvent(OldState, NewState) end

---@return boolean
function ASTExtraPlayerCharacter:RegisterAndCheckSelfToGameConcernObjCollection() end

---@return boolean
function ASTExtraPlayerCharacter:ShouldExitWaterSwitchWeaponBack() end

---@return boolean
function ASTExtraPlayerCharacter:ShouldEnterWaterSwitchWeaponNone() end

---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function ASTExtraPlayerCharacter:CheckDamageCauserUnVisible(FinalDamage, DamageEvent, EventInstigator, DamageCauser) end

function ASTExtraPlayerCharacter:OnRep_FlyingTeam() end

function ASTExtraPlayerCharacter:OnFlyingTeamChanged() end

function ASTExtraPlayerCharacter:OnRep_RideLeader() end

function ASTExtraPlayerCharacter:OnRideLeaderChanged() end

function ASTExtraPlayerCharacter:OnRep_RideTogetherTeam() end

function ASTExtraPlayerCharacter:OnRideTogetherTeamChanged() end
