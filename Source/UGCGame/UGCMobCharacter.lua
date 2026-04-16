---@meta

---怪物状态类型
---@class EUGCMobState
---@field MobState_None number @未激活
---@field MobState_Born number @出生
---@field MobState_Alive_Stand number @站立
---@field MobState_Alive_Stun number @硬直
---@field MobState_Alive_Move number @移动
---@field MobState_Dead number @死亡
EUGCMobState = {}


---@class EMobNetRelevantType
---@field EMobNetRelevantType_All number @正常
---@field EMobNetRelevantType_OwnerOnly number @仅拥有者可见
---@field EMobNetRelevantType_Friend number @同阵营可见
---@field EMobNetRelevantType_None number @不可见
---@field ENetRelevantType_Max number
EMobNetRelevantType = {}


---@class FUGCMobBehaviorInitConfig
---@field bReturnIfRangeOfActivity boolean @领地相关***************
---@field RangeOfActivity number
FUGCMobBehaviorInitConfig = {}


---@class FOnMobCharacterNameChangeDelegate : ULuaMulticastDelegate
FOnMobCharacterNameChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMobCharacterNameChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewName string
function FOnMobCharacterNameChangeDelegate:Broadcast(NewName) end


---@class FOnUGCMobCharacterDeathDelegate : ULuaMulticastDelegate
FOnUGCMobCharacterDeathDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeadCharacter: AUGCMobCharacter, Killer: AController, DamageCauser: AActor, KillingHitInfo: FHitResult, KillingHitImpulseDir: FVector, KillingHitDamageTypeID: number, DamageTypeClass: USTExtraDamageType, IsHeadShotDamage: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMobCharacterDeathDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeadCharacter AUGCMobCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageTypeID number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
function FOnUGCMobCharacterDeathDelegate:Broadcast(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageTypeID, DamageTypeClass, IsHeadShotDamage) end


---@class FOnClearOnDeath : ULuaMulticastDelegate
FOnClearOnDeath = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Owner: AActor, EventInstigater: AController, DamageType: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClearOnDeath:Add(Callback, Obj) end

---触发 Lua 广播
---@param Owner AActor
---@param EventInstigater AController
---@param DamageType number
function FOnClearOnDeath:Broadcast(Owner, EventInstigater, DamageType) end


---@class FOnUGCMobMoveBlockDelegate : ULuaMulticastDelegate
FOnUGCMobMoveBlockDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: AUGCMobCharacter, HitResult: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnUGCMobMoveBlockDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef AUGCMobCharacter
---@param HitResult FHitResult
function FOnUGCMobMoveBlockDelegate:Broadcast(SelfRef, HitResult) end


---怪物角色类
---@class AUGCMobCharacter: ACharacter, IObjectPoolInterface, IDamageableInterface, IAttrModifyInterface, IGameAttributeCarrierInterface, IRegionObjectInterface, IBulletEffectInterface, IBulletHitInterface, IUGCCharacterAnimPlayInterfaceBase, ICommonAIInterface
---@field Health number @当前生命值
---@field HealthAddScale number @加血速率
---@field HealthMax number @最大生命值
---@field bInvincible number @是否无敌
---@field SkillCDRecoverRate FGameAttributeProperty @技能急速，值越大技能冷却越快结束
---@field IsShowDamageNum boolean @是否显示伤害数字
---@field bOpenHitFeedback boolean
---@field bIsShowHealthBar boolean @是否显示血条
---@field bIsShowKillInfo boolean
---@field ShowName string @血条上显示的名字
---@field OnMobCharacterNameChangeDelegate FOnMobCharacterNameChangeDelegate
---@field DefaultHitEffect UParticleSystem @受击表现-BEGIN ***********************************
---@field PlayBeHitedAnimTimeInterval number @受击动画播放最小间隔，小于受击动画长度时无效
---@field bEnableImpluse boolean
---@field RadialDamageImpluseScale number
---@field OnDeath FOnUGCMobCharacterDeathDelegate
---@field bNeedDestroyOnDeath boolean @是否启用尸体消失后延迟销毁
---@field DisappearOnDeathLifeSpan number @尸体消失后延迟多久销毁
---@field DelayRemoveDeadBody number @死亡后尸体存在时间
---@field EnableRagdoll boolean
---@field MaxRagdollActiveDuration number
---@field mMobState EUGCMobState @状态+动画-BEGIN ***********************************
---@field BornTime number @出生状态持续时间
---@field bDead number
---@field StunDuration number @硬直状态持续时间
---@field DelayOpenCollisionTime number
---@field UGCGeneralMoveSpeedScale number @移动速度倍率
---@field SpeedValue number
---@field MaxDeltaLocationForTurningAnimation number
---@field MinDeltaAngleForTurningAnimation number
---@field bUseCrowdMove boolean
---@field OnMoveBlockDelegate FOnUGCMobMoveBlockDelegate
---@field MaxIdleSpeed number
---@field MaxWalkSpeed number
---@field MaxRunSpeed number
---@field MaxSprintSpeed number
---@field NetRelevantType EMobNetRelevantType
---@field SleepNetParam number
---@field ActiveNetParam number
---@field SleepCompClass ULuaArrayHelper<UActorComponent>
---@field ControllerSleepCompClass ULuaArrayHelper<UActorComponent>
---@field BehaviorInitConfig FUGCMobBehaviorInitConfig
---@field BehaviorTreeSetting FBehaviorTreeReflectSetting
---@field AttackMeActorRemainTime number @处于活动范围外时仇恨持续时间
---@field SpawnLoc FVector @出生地点
---@field bOutOfActivityRange boolean @是否在活动范围外
local AUGCMobCharacter = {}

---@param PrevSkillCDRecoverRate FGameAttributeProperty
function AUGCMobCharacter:OnRep_SkillCDRecoverRate(PrevSkillCDRecoverRate) end

---@param PrevHealth number
function AUGCMobCharacter:OnRep_Health(PrevHealth) end

---@param Prev number
function AUGCMobCharacter:OnRep_UGCGeneralMoveSpeedScale(Prev) end

---@param PrevHealthMax number
function AUGCMobCharacter:OnRep_HealthMax(PrevHealthMax) end

---@param PrevbInvincible number
function AUGCMobCharacter:OnRep_bInvincible(PrevbInvincible) end

function AUGCMobCharacter:SyncAttrToBlackboard() end

---@param Msg string
function AUGCMobCharacter:OnReceiveMessages(Msg) end

---是否存活
---@return boolean
function AUGCMobCharacter:IsAlive() end

---Event
---生效范围 服务器
---小怪即将受到伤害前事件
---@param DamageCauser AActor @伤害来源
---@param EventInstigator AController @伤害来源的Controller
---@param Damage number
---@param DamageContext FGameMagnitudeContext @伤害事件上下文
function AUGCMobCharacter:PreTakeDamageEvent(DamageCauser, EventInstigator, Damage, DamageContext) end

---Event
---生效范围 服务器
---受到伤害后事件
---@param DamageCauser AActor @伤害来源
---@param EventInstigator AController @伤害来源的Controller
---@param Damage number
---@param DamageContext FGameMagnitudeContext @伤害事件上下文
function AUGCMobCharacter:PostTakeDamageEvent(DamageCauser, EventInstigator, Damage, DamageContext) end

---Event
---生效范围 服务器
---伤害值覆盖事件,在全局伤害公式前
---@param Damage number
---@param DamageType number @伤害类型
---@param EventInstigator AController @伤害来源的Controller
---@param DamageCauser AActor @伤害来源
---@param Hit FHitResult @命中信息
---@return number @覆盖后的伤害值
function AUGCMobCharacter:PreOverrideDamageValue(Damage, DamageType, EventInstigator, DamageCauser, Hit) end

---Event
---生效范围 服务器
---伤害值覆盖事件,在全局伤害公式后
---@param Damage number
---@param DamageType number @伤害类型
---@param EventInstigator AController @伤害来源的Controller
---@param DamageCauser AActor @伤害来源
---@param Hit FHitResult @命中信息
---@return number @覆盖后的伤害值
function AUGCMobCharacter:PostOverrideDamageValue(Damage, DamageType, EventInstigator, DamageCauser, Hit) end

---@param Damage number
---@param DamageTypeID number
---@param DamageInstigatorPawn APawn
---@param HitRes FHitResult
---@param IsHeadShotDamage boolean
---@param bIsStun boolean
function AUGCMobCharacter:BroadcastCompactClientsSimulateDamage(Damage, DamageTypeID, DamageInstigatorPawn, HitRes, IsHeadShotDamage, bIsStun) end

---@param Damage number
---@param EventInstigator AController
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
---@param DamageTags ULuaArrayHelper<string>
---@param DamageTypeID number
function AUGCMobCharacter:ShowDamageEffect(Damage, EventInstigator, DamageInstigatorPawn, IsHeadShotDamage, DamageTags, DamageTypeID) end

---@param bIsStun boolean
---@param HitRes FHitResult
function AUGCMobCharacter:PlayBeHitAnimImpl(bIsStun, HitRes) end

---@param HitRes FHitResult
function AUGCMobCharacter:HandleBeHitEffect(HitRes) end

---@param Causer AActor
---@param bIsHeadshot boolean
function AUGCMobCharacter:HandleHitByBullet(Causer, bIsHeadshot) end

---@param Comp UPrimitiveComponent
---@return string
function AUGCMobCharacter:GetBulletHitEffectDataAssetTag(Comp) end

---@param BulletOwner UObject
---@return boolean
function AUGCMobCharacter:ShouldHideBulletHitEffect(BulletOwner) end

---@param KillingDamage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
---@param DamageTypeID number
function AUGCMobCharacter:BPDie(KillingDamage, EventInstigator, DamageCauser, DamageEvent, DamageTypeID) end

---Event
---生效范围 服务器&客户端
---怪物死亡事件
---@param Killer AController @把该小怪杀死的角色的Controller
---@param DamageCauser AActor @杀死该小怪的角色
---@param KillingHitDamageType EDamageType @最后一击的伤害类型
function AUGCMobCharacter:MobPawnDeadEvent(Killer, DamageCauser, KillingHitDamageType) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function AUGCMobCharacter:BPNotifyStartDying(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function AUGCMobCharacter:BPNotifyDeathEnd(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@param killController AController
---@param IsHeadShotDamage boolean
---@param typeID number
function AUGCMobCharacter:BroadcastClientsDeath(Damage, DamageEvent, DamageCauser, killController, IsHeadShotDamage, typeID) end

---@param EventInstigator AController
---@param DamageType number
function AUGCMobCharacter:ClearOnDeath(EventInstigator, DamageType) end

---生效范围 服务器
---强制杀死怪物
function AUGCMobCharacter:ForceDie() end

---布娃娃表现-BEGIN ***********************************
function AUGCMobCharacter:OpenDeadBodyRagDoll_Client() end

---@param mState EUGCMobState
function AUGCMobCharacter:EnterState(mState) end

---@param mState EUGCMobState
---@return boolean
function AUGCMobCharacter:AllowState(mState) end

---@return FGameplayTagContainer
function AUGCMobCharacter:GetMobDynamicState() end

---@param MobDynamicState FGameplayTag
---@return boolean
function AUGCMobCharacter:CanEnterDynamicState(MobDynamicState) end

---@param MobDynamicState FGameplayTag
---@return boolean
function AUGCMobCharacter:HasDynamicState(MobDynamicState) end

---@param MobDynamicState FGameplayTag
---@return boolean
function AUGCMobCharacter:EnterDynamicState(MobDynamicState) end

---@param MobDynamicState FGameplayTag
---@return boolean
function AUGCMobCharacter:LeaveDynamicState(MobDynamicState) end

---Event
---生效范围 服务器&客户端
---状态变化事件
---@param OldState EUGCMobState @变化前状态
---@param NewState EUGCMobState @变化后状态
function AUGCMobCharacter:StateChangeEvent(OldState, NewState) end

---@param PersistComp UPersistBaseComponent
---@param Tag FGameplayTag
function AUGCMobCharacter:OnPersistCompDynamicStateInterrupted(PersistComp, Tag) end

---@param OldState EUGCMobState
function AUGCMobCharacter:OnRep_MobState(OldState) end

function AUGCMobCharacter:HandleStunEnd() end

function AUGCMobCharacter:OnRep_ReplicatedMovement() end

---生效范围 服务器&客户端
---获取当前速度值
---@return number @float 当前速度值
function AUGCMobCharacter:GetCurrentSpeed() end

---生效范围 服务器&客户端
---获取当前速度向量
---@return FVector @FVector 当前速度向量
function AUGCMobCharacter:GetVelocity() end

function AUGCMobCharacter:UpdateMoveTypeAnim() end

---@param AnimGameplayTag string
function AUGCMobCharacter:PlayBaseAnimation(AnimGameplayTag) end

---@param AnimGameplayTag string
---@param bUpBody boolean
function AUGCMobCharacter:PlayTempAnimation(AnimGameplayTag, bUpBody) end

---@param OldState FRepSnapshot
---@param NewState FRepSnapshot
function AUGCMobCharacter:OnNetRecvNewSanpshot(OldState, NewState) end

---@param OldRotator FRotator
---@param NewRotator FRotator
---@param OldLocation FVector
---@param NewLocation FVector
function AUGCMobCharacter:StartTurning(OldRotator, NewRotator, OldLocation, NewLocation) end

---@param Killer AController
function AUGCMobCharacter:DropItem(Killer) end

---@param bSleep boolean
function AUGCMobCharacter:Sleep(bSleep) end

function AUGCMobCharacter:CheckRangeOfActivity() end

---@param Actor AActor
function AUGCMobCharacter:SetAttackMeActor(Actor) end

function AUGCMobCharacter:InitBehaviorBBK() end

---@param Reason string
function AUGCMobCharacter:PauseBehaviorTree(Reason) end

---@param Reason string
function AUGCMobCharacter:ResumeBehaviorTree(Reason) end

---@param Reason string
function AUGCMobCharacter:StopBehaviorTree(Reason) end

function AUGCMobCharacter:RestartBehaviorTree() end

---@param BTMsg string
function AUGCMobCharacter:NotifyBehaviorTreeMsg(BTMsg) end
