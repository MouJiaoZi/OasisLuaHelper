---@meta

---@class EMonsterClimbPhase
---@field None number
---@field Verical number
---@field VerticalToHorizontal number
---@field Horizontal number
---@field HorizontalToVertical number
---@field SingleHands number
---@field DoubleHands number
---@field CrossingWindowOrWall number
EMonsterClimbPhase = {}


---@class EMonsterJumpExPhase
---@field None number
---@field Start number
---@field Loop number
---@field End number
EMonsterJumpExPhase = {}


---@class EMonsterState
---@field Move number
---@field Sprint number
---@field Shoveling number
---@field ProneMove number
---@field Stand number
---@field Crouch number
---@field Prone number
---@field Jump number
---@field GunFire number
---@field GunReload number
---@field GunADS number
---@field GunBolt number
---@field Picth number
---@field SwitchWeapon number
---@field Pick number
---@field MeleeAttack number
---@field HoldGrenade number
---@field Save number
---@field UseConsumables number
---@field Dying number
---@field Dead number
---@field DriveVehicle number
---@field InVehicle number
---@field LeanOutVehicle number
---@field Swim number
---@field InParachute number
---@field Vault number
---@field InPlane number
---@field SwitchPP number
---@field PlayEmote number
---@field MagicDance number
---@field Build number
---@field Battle number
---@field Born number
---@field Stun number
---@field Observe number
---@field ClimbingWall number
---@field ClimbingWindow number
---@field Zombie number
---@field DetectPaintDecal number
---@field Imprisonment number
---@field ShieldDefence number
---@field StunBurnNag number
---@field Alertness number
---@field FrontBorn number
---@field KillSelf number
---@field GiftCanGive number
---@field GiftGiving number
---@field GiftReceiving number
---@field Revival number
---@field IgnoreFindFloor number
---@field AirAttackLocator number
---@field ControlUnmannedVehicle number
---@field BattleDance number
---@field OperatingMachine number
---@field Frozen number
---@field RemoteControlPawn number
---@field WeaponAccPrepare number
---@field Interacting number
---@field CastingSkill number
---@field Carring number
---@field __MAX number
EMonsterState = {}


---@class EMonsterDurationType
---@field EMonsterBornType_Burrow number @钻地
---@field EMonsterBornType_Wall number @扒墙
---@field EMonsterBornType_Fall number @掉下
---@field EMonsterBornType_ProneToStand number @爬起
---@field EMonsterBornType_Garbage number @垃圾堆
---@field EMonsterBornType_BreakWall number @壁画和镜子
---@field EMonsterBornType_LyingOnTheGround number @一直躺在地上
---@field EMonsterBornType_FallToGround number @落地缓冲
---@field EMonsterBornType_FallToGround1 number @落地缓冲1
---@field EMonsterBornType_FallToGround2 number @落地缓冲2
---@field EMonsterBornType_FallToGround3 number @落地缓冲3
---@field EMonsterDeadType_Explosion number @爆炸死
---@field EMonsterDeadType_Normal number @正常死
---@field EMonsterDeadType_Moving number @运动中死
---@field EMonsterDeadType_Climbing number @爬墙死
---@field EMonsterDeadType_Melee number @钝器死
---@field EMonsterDeadType_Burning number @燃烧死
---@field EMonsterDeadType_GoBack number @钻地死(主动)
---@field EMonsterDeadType_Suicide number @自杀
---@field Default number @请选择有效类型
EMonsterDurationType = {}


---@class EMobWalkType
---@field Normal number @Normal
---@field IdleWalk number @IdleWalk
---@field AttackWalk number @AttackWalk
---@field SprintRun number @SprintRun
---@field Sideways number @SidewaysWalk
---@field MaxSpeed number @MaxSpeed
EMobWalkType = {}


---@class EEscapeMonsterDoingState
---@field Before number @Before
---@field Doing number @Doing
---@field After number @After
EEscapeMonsterDoingState = {}


---@class FMonsterViewData
---@field ViewPitchYaw number
---@field ViewTargetLocation FVector
FMonsterViewData = {}


---@class FMonsterClimbData
---@field ClimbPhase EMonsterClimbPhase
---@field ClimbLocZ number
FMonsterClimbData = {}


---@class FCompactDamageEventData
---@field DamageTypeID number
FCompactDamageEventData = {}


---@class FMonsterDurationData
---@field DurationType EMonsterDurationType
---@field DurationValue number
FMonsterDurationData = {}


---@class FMonsterDeathData
---@field poseType EMonsterPoseType
---@field deadDir FVector
---@field deadUpDir FVector
FMonsterDeathData = {}


---@class FMonsterStunAttrModitfyConfig
---@field ModifyAttr string
---@field Op EAttrOperator
---@field ModifyValue number
FMonsterStunAttrModitfyConfig = {}


---@class FMonsterBornStateConfig
---@field PawnState EMonsterState
---@field BornType number
---@field FrontBornType number
FMonsterBornStateConfig = {}


---@class FSimpleCharAnimParamList
---@field IdleBlendSpaceValue number
FSimpleCharAnimParamList = {}


---@class FOnSimplePostTakeDamage : ULuaMulticastDelegate
FOnSimplePostTakeDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DamageCauser: AActor, Damage: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimplePostTakeDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param DamageCauser AActor
---@param Damage number
function FOnSimplePostTakeDamage:Broadcast(DamageCauser, Damage) end


---@class FOnSimplePostTakeDamageV2 : ULuaMulticastDelegate
FOnSimplePostTakeDamageV2 = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Damage: number, Monster: ASTExtraSimpleCharacter, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimplePostTakeDamageV2:Add(Callback, Obj) end

---触发 Lua 广播
---@param Damage number
---@param Monster ASTExtraSimpleCharacter
---@param DamageCauser AActor
function FOnSimplePostTakeDamageV2:Broadcast(Damage, Monster, DamageCauser) end


---@class FOnSimpleCharacterWeaponStateChanged : ULuaMulticastDelegate
FOnSimpleCharacterWeaponStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurState: EFreshWeaponStateType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleCharacterWeaponStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurState EFreshWeaponStateType
function FOnSimpleCharacterWeaponStateChanged:Broadcast(CurState) end


---@class FOnSimpleCharacterAnimEvent : ULuaMulticastDelegate
FOnSimpleCharacterAnimEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventMsg: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleCharacterAnimEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventMsg string
function FOnSimpleCharacterAnimEvent:Broadcast(EventMsg) end


---@class FOnChangeAnimParam : ULuaSingleDelegate
FOnChangeAnimParam = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChangeAnimParam:Bind(Callback, Obj) end

---执行委托
function FOnChangeAnimParam:Execute() end


---@class FOnFinishJumpToTarget : ULuaSingleDelegate
FOnFinishJumpToTarget = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnFinishJumpToTarget:Bind(Callback, Obj) end

---执行委托
function FOnFinishJumpToTarget:Execute() end


---@class FMonsterOnTakeDamageModify : ULuaSingleDelegate
FMonsterOnTakeDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, FinalDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor, ExFinalDamage: number, IsHeadShot: boolean, DamageHitPosition: number, Params: FTakeDamageParams) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMonsterOnTakeDamageModify:Bind(Callback, Obj) end

---执行委托
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@param IsHeadShot boolean
---@param DamageHitPosition number
---@param Params FTakeDamageParams
function FMonsterOnTakeDamageModify:Execute(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage, IsHeadShot, DamageHitPosition, Params) end


---@class FOnClearOnDeathByPose : ULuaMulticastDelegate
FOnClearOnDeathByPose = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Owner: AActor, EventInstigater: AController, DamageType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClearOnDeathByPose:Add(Callback, Obj) end

---触发 Lua 广播
---@param Owner AActor
---@param EventInstigater AController
---@param DamageType number
function FOnClearOnDeathByPose:Broadcast(Owner, EventInstigater, DamageType) end


---@class FOnSimplePostTakePointDamage : ULuaMulticastDelegate
FOnSimplePostTakePointDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Victim: AActor, Damage: number, HitResult: FHitResult, EventInstigator: AController, DamageCauser: AActor, DamageHitPosition: EAvatarDamagePosition) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimplePostTakePointDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param Victim AActor
---@param Damage number
---@param HitResult FHitResult
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageHitPosition EAvatarDamagePosition
function FOnSimplePostTakePointDamage:Broadcast(Victim, Damage, HitResult, EventInstigator, DamageCauser, DamageHitPosition) end


---@class FOnMonsterPostTakeDamage : ULuaMulticastDelegate
FOnMonsterPostTakeDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FinalDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor, ExFinalDamage: number, IsHeadShot: boolean, DamageHitPosition: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMonsterPostTakeDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@param IsHeadShot boolean
---@param DamageHitPosition number
function FOnMonsterPostTakeDamage:Broadcast(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage, IsHeadShot, DamageHitPosition) end


---@class FOnPostMonsterBorn : ULuaMulticastDelegate
FOnPostMonsterBorn = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Monster: ASTExtraSimpleCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostMonsterBorn:Add(Callback, Obj) end

---触发 Lua 广播
---@param Monster ASTExtraSimpleCharacter
function FOnPostMonsterBorn:Broadcast(Monster) end


---@class FOnMonsterStateEnter : ULuaMulticastDelegate
FOnMonsterStateEnter = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, state: EMonsterState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMonsterStateEnter:Add(Callback, Obj) end

---触发 Lua 广播
---@param state EMonsterState
function FOnMonsterStateEnter:Broadcast(state) end


---@class FOnSimpleCharacterBirthDelegate : ULuaMulticastDelegate
FOnSimpleCharacterBirthDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PawnState: EMonsterState, BirthType: EMonsterBornType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleCharacterBirthDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PawnState EMonsterState
---@param BirthType EMonsterBornType
function FOnSimpleCharacterBirthDelegate:Broadcast(PawnState, BirthType) end


---@class FOnSimpleCharacterHpChange : ULuaMulticastDelegate
FOnSimpleCharacterHpChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentHP: number, MaxHP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleCharacterHpChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentHP number
---@param MaxHP number
function FOnSimpleCharacterHpChange:Broadcast(CurrentHP, MaxHP) end


---@class ASTExtraSimpleCharacter: ASTExtraCharacter, ITelecontrolPawnInterface, IDamageNumberInterface, IMeleeAttackOwnerInterface, ICharacterOutlineInterface
---@field NormalWalkSpeed number
---@field IdleWalkSpeedRatio number
---@field AttackWalkSpeedRatio number
---@field SprintRunSpeedRatio number
---@field SidewaysSpeedRatio number
---@field MaxSpeedModeRatio number
---@field GlobalTlogID number
---@field PersonalTlogID number
---@field bRecordPosition boolean
---@field bRecordTime boolean
---@field bEnableIgnoreActorForBullet boolean
---@field IdleBlendSpaceValue number
---@field OnChangeAnimParam FOnChangeAnimParam
---@field jumpCheckOnGroundProtect number
---@field bTakeCirclePoisonDamage boolean
---@field CirclePoisonDamage number
---@field CirclePoisonDamageInterval number
---@field bBroadTakeCirclePoisonDamage boolean
---@field bBroadTakeDrowningDamage boolean
---@field bBroadTakeFallingDamage boolean
---@field bBroadTakeAirAttackDamage boolean
---@field MomentumFactor number
---@field bDeactivationEnabled boolean
---@field SimpleCharacterRegionSize ERegionSizeIndex
---@field OnTakeDamageModify_Override FMonsterOnTakeDamageModify
---@field OnMonsterPostTakeDamage FOnMonsterPostTakeDamage
---@field OnSimplePostTakeDamage FOnSimplePostTakeDamage
---@field OnSimpleTakeZeroDamage FOnSimplePostTakeDamage
---@field OnSimplePostTakeZeroDamageV2 FOnSimplePostTakeDamageV2
---@field OnSimplePostTakePointDamage FOnSimplePostTakePointDamage
---@field MonsterStateEnterHandler FOnMonsterStateEnter
---@field MonsterStateLeaveHandler FOnMonsterStateEnter
---@field MonsterViewData FMonsterViewData
---@field bNeedCustomAOSocket boolean
---@field CustomAOOffsetFromCenter FVector
---@field bUseZombieFlyMode boolean
---@field bActivePhysWhenZombieFlyDie boolean
---@field bIsOnGround boolean
---@field OnResumeMoveHandle FTimerHandle
---@field bCanControlByPlayer boolean
---@field bUseCrowdMove boolean
---@field bAvoidedWhenUseCharMove boolean
---@field bEnableFallingInterruptSkill boolean
---@field bSetWalkStandState boolean
---@field CanBeHiddenMesh boolean
---@field ImpluseScale number
---@field bIgnoreMonsters boolean
---@field bHoldWeaponHorizontal boolean
---@field ImpluseZScale number
---@field DelayRemoveDeadBody number
---@field EnableRagdoll boolean
---@field MaxRagdollActiveDuration number
---@field ShowKillStreak boolean
---@field bCanMoveAfterDeath boolean
---@field deadTypeConfigs ULuaMapHelper<number, FMonsterDeathData>
---@field PlayerFirstProbability number
---@field HatredRevolution number
---@field AnimUpdateRateParams ULuaArrayHelper<number>
---@field bUseCustomAnimUpdateRateParams boolean
---@field CustomAnimUpdateRateParams ULuaArrayHelper<number>
---@field bSkipMeshOptimizationSetup boolean
---@field bCanSwimming boolean
---@field bDisableMontageOnDeath number
---@field SimpleCharacterBirthEvent FOnSimpleCharacterBirthDelegate
---@field OnPostMonsterBorn FOnPostMonsterBorn
---@field bNeedOpenOptWhenLeaveRegion boolean
---@field bEnableImpluse boolean
---@field OpenShootVertify boolean
---@field WalkSpeed number
---@field RunSpeed number
---@field SpawnType EActorSpawnType
---@field BornStateType FMonsterBornStateConfig
---@field MonsterDamageEXP number
---@field MonsterKillEXP number
---@field MonsterLevel number
---@field SpeedValueFight number
---@field SpeedValueClimb number
---@field StunHealthPercentageThreshold number
---@field StunProbability number
---@field StunDuration number
---@field NoBattleEnterStun boolean
---@field MonsterStunAttrModitfyName string
---@field MonsterStunAttrModitfyConfigList ULuaArrayHelper<FMonsterStunAttrModitfyConfig>
---@field MonsterUniqueID number
---@field DamagePos_HeadOffset FVector
---@field bEnableTurnAnimation boolean
---@field IsHurting boolean
---@field IsTurning boolean
---@field HurtDir FVector
---@field HurtDistance number
---@field IsHeadshot boolean
---@field HurtResetDefaultTime number
---@field ZombieSleepToDie number
---@field bEnableSimpleCharacterCompVisionOptimization boolean
---@field OnSimpleCharacterWeaponStateChanged FOnSimpleCharacterWeaponStateChanged
---@field OnSimpleCharacterAnimEvent FOnSimpleCharacterAnimEvent
---@field InitDurationData ULuaArrayHelper<FMonsterDurationData>
---@field FallSpeedSetting ULuaArrayHelper<number>
---@field CurrentClimbData FMonsterClimbData
---@field CurrentJumpExPhase EMonsterJumpExPhase
---@field IsInAIPathLinkRunning boolean
---@field MeshMaxVisibleDelay number
---@field DelayOpenCollisionTime number
---@field BornCollisitionTag string
---@field bPlayHitEvenIfPlayingMontage boolean
---@field BornCollisionTrans FTransform
---@field BornCollisionAttach string
---@field bEnabledForceFalling boolean @路径演出需要,是否设为强制falling状态
---@field DamageSyncFrameFrequency number
---@field EnableDamageSyncFrequencyControl boolean
---@field LastDamageSyncFrameCount number
---@field MainAnimListTag string
---@field MonsterAnimListRandomSeed number
---@field MonsterAnimListNum ULuaArrayHelper<number>
---@field HearRadius number
---@field MinTimeLockHeardPos number
---@field bFilterSoundType boolean
---@field SoundTypes ULuaArrayHelper<ESoundType>
---@field IsShowDamageNum boolean
---@field bOpenHeadShotFeedBack boolean
---@field bOpenEnemyDeadFeedBack boolean
---@field bOpenLessHealthFeedBack boolean
---@field IsShowRadialDamageHurtAnim boolean
---@field bIsShowHealthBar boolean
---@field bIsShowKillInfo boolean
---@field OnFinishJumpToTarget FOnFinishJumpToTarget
---@field bIsJumpingToTarget boolean
---@field DisableCollisionPeriod number
---@field bDisableCollisionBothSide boolean
---@field DrawDebugInfoContentList ULuaArrayHelper<string>
---@field OnSimpleCharacterHpChange FOnSimpleCharacterHpChange
---@field DamageScale ULuaMapHelper<string, FDamageScale>
---@field MeshResourceForHighendDevice USkeletalMesh
---@field MeshResourceForLowendDevice USkeletalMesh
---@field bNeedDestroyOnDeath boolean
---@field DisappearOnDeathLifeSpan number
---@field bShootingCanBreakWindow boolean
---@field TraceRangeBoneNameList ULuaArrayHelper<string>
---@field RepCurveRootMotionMoveParams FCurveRootMotionMoveRequest
---@field EnableOutline boolean
---@field bDisableDrawDying boolean
---@field OutlineDistance number
---@field AimOffsetTargetLocation FVector
---@field bHasAimOffsetTargetLocation boolean
---@field ReplaceCustomNetRelevant ICustomNetRelevantInterface @Array of ActorComponents that have been added by the user on a per-instance basis.
---@field AdditiveCustomNetRelevant ULuaArrayHelper<ICustomNetRelevantInterface>
---@field bNeedAnimList boolean
local ASTExtraSimpleCharacter = {}

---@param ShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
---@param bLineTrace boolean
function ASTExtraSimpleCharacter:GetWeaponShotIgnoreTargetList(ShootWeapon, ShootRot, bLineTrace) end

---@param iWalkType EMobWalkType
function ASTExtraSimpleCharacter:ChangeWalkSpeed(iWalkType) end

function ASTExtraSimpleCharacter:OnRep_IdleBlendSpaceValue() end

function ASTExtraSimpleCharacter:OnRep_ReplicatedMovement() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraSimpleCharacter:TakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param state EMonsterState
---@param withLog boolean
---@return boolean
function ASTExtraSimpleCharacter:AllowState(state, withLog) end

---@param state EMonsterState
---@return boolean
function ASTExtraSimpleCharacter:EnterState(state) end

---@param state EMonsterState
---@return boolean
function ASTExtraSimpleCharacter:HasState(state) end

---@param state EMonsterState
---@return boolean
function ASTExtraSimpleCharacter:LeaveState(state) end

---@param stateID number
---@param interruptedBy number
function ASTExtraSimpleCharacter:OnStateInterrupted(stateID, interruptedBy) end

function ASTExtraSimpleCharacter:OnRep_MonsterAnimListRandomSeed() end

---@param EnteredState EMonsterState
function ASTExtraSimpleCharacter:OnStateEnter(EnteredState) end

---@param EnteredState EMonsterState
function ASTExtraSimpleCharacter:OnStateLeave(EnteredState) end

function ASTExtraSimpleCharacter:RefreshBoneTransformsAndTick() end

---@param onGround boolean
function ASTExtraSimpleCharacter:SetIsOnGround(onGround) end

---@param reason string
function ASTExtraSimpleCharacter:StopMove(reason) end

---@param InCanControlByPlayer boolean
function ASTExtraSimpleCharacter:SetCanControlByPlayer(InCanControlByPlayer) end

function ASTExtraSimpleCharacter:On_RepCanControlByPlayer() end

function ASTExtraSimpleCharacter:OnRep_UseCrowdMove() end

function ASTExtraSimpleCharacter:OnCanControlByPlayerChangeEvent() end

---@return boolean
function ASTExtraSimpleCharacter:ShouldStopMontageBeforePlayAnimMontage() end

function ASTExtraSimpleCharacter:HandleReceiveBornType() end

---@param InFrontBornType EMonsterBornType
---@param InBornType EMonsterBornType
function ASTExtraSimpleCharacter:SetBornType(InFrontBornType, InBornType) end

---@param IsFron boolean
function ASTExtraSimpleCharacter:EnterFrontBronOrBornState(IsFron) end

function ASTExtraSimpleCharacter:BP_ForceDie() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@param killController AController
---@param IsHeadShotDamage boolean
---@param typeID number
function ASTExtraSimpleCharacter:BroadcastClientsDeath(Damage, DamageEvent, DamageCauser, killController, IsHeadShotDamage, typeID) end

---@param KillingDamage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
---@param DamageTypeID number
function ASTExtraSimpleCharacter:BPDie(KillingDamage, EventInstigator, DamageCauser, DamageEvent, DamageTypeID) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function ASTExtraSimpleCharacter:BPNotifyStartDying(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function ASTExtraSimpleCharacter:BPNotifyDeathEnd(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param EventInstigator AController
---@param DamageType number
---@param deadPoseType EMonsterPoseType
function ASTExtraSimpleCharacter:ClearOnDeathByPose(EventInstigator, DamageType, deadPoseType) end

---@param deadPoseType EMonsterPoseType
function ASTExtraSimpleCharacter:OpenDeadBodyRagDoll_Client(deadPoseType) end

function ASTExtraSimpleCharacter:DisappearOnDeath() end

---@return EMonsterBornType
function ASTExtraSimpleCharacter:GetBornType() end

---@return EMonsterBornType
function ASTExtraSimpleCharacter:GetFrontBornType() end

function ASTExtraSimpleCharacter:HandleStunEnd() end

---@return number
function ASTExtraSimpleCharacter:GetHurtResetTime() end

---@param causer AActor
---@param bIsHeadshot boolean
function ASTExtraSimpleCharacter:ShowBeHitAnim(causer, bIsHeadshot) end

function ASTExtraSimpleCharacter:OnHitAnimPlay() end

function ASTExtraSimpleCharacter:ForceUpdateAnimationList() end

function ASTExtraSimpleCharacter:CalculateUniqueIDOnServer() end

---@return string
function ASTExtraSimpleCharacter:GetUIDisplayName() end

---@param AnimMsg string
function ASTExtraSimpleCharacter:BroadcastClientAnimMsg(AnimMsg) end

function ASTExtraSimpleCharacter:SetAnimInstanceFromMesh() end

---@param Damage number
---@param DamageTypeID number
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
function ASTExtraSimpleCharacter:BroadcastCompactClientsSimulateDamage(Damage, DamageTypeID, DamageInstigatorPawn, IsHeadShotDamage) end

---@param Damage number
---@param DamageTypeID number
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
function ASTExtraSimpleCharacter:BroadcastClientsTakeZeroDamage(Damage, DamageTypeID, DamageInstigatorPawn, IsHeadShotDamage) end

---@param TargetLocation FVector
---@param GravityScale number
---@param Speed number
---@param bIsSkill boolean
---@param bIsLowArc boolean
function ASTExtraSimpleCharacter:StartJumpToTarget(TargetLocation, GravityScale, Speed, bIsSkill, bIsLowArc) end

---@param Vel FVector
---@param GravityScale number
---@param bIsSkill boolean
---@param bRotFollowVel boolean
function ASTExtraSimpleCharacter:StartJump_Multicast(Vel, GravityScale, bIsSkill, bRotFollowVel) end

---@param ImpactResult FHitResult
function ASTExtraSimpleCharacter:OnJumpToTargetImpact(ImpactResult) end

function ASTExtraSimpleCharacter:OnRep_JumpingToTarget() end

---@param bIsStart boolean
---@param bIsVault boolean
function ASTExtraSimpleCharacter:OnPathInterpStatusChanged(bIsStart, bIsVault) end

---@param PrevHealth number
function ASTExtraSimpleCharacter:OnRep_Health(PrevHealth) end

function ASTExtraSimpleCharacter:StopAIAndCrouch() end

function ASTExtraSimpleCharacter:OnRep_RepCurveRootMotionMoveParams() end

---@param OriLocation FVector
---@param OutLocation FVector
---@param Radius number
---@param TryTimes number
---@return boolean
function ASTExtraSimpleCharacter:FindRandomPosition(OriLocation, OutLocation, Radius, TryTimes) end

---@param InShowOutline boolean
function ASTExtraSimpleCharacter:OnShowOutline(InShowOutline) end

---@return number
function ASTExtraSimpleCharacter:GetOutlineType() end

---@param bEagleWatch boolean
function ASTExtraSimpleCharacter:OnRepIsEagleWatch(bEagleWatch) end

---@param Interface ICustomNetRelevantInterface
function ASTExtraSimpleCharacter:AddCustomNetRelevantInterface(Interface) end

---@param Interface ICustomNetRelevantInterface
function ASTExtraSimpleCharacter:RemoveCustomNetRelevantInterface(Interface) end

function ASTExtraSimpleCharacter:ClearCustomNetRelevantInterface() end
