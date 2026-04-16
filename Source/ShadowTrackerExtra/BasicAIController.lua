---@meta

---@class EAIShootingPose
---@field ShootingPose_Stand number @站立射击
---@field ShootingPose_Stand_Peek_Left number @站立左倾射击
---@field ShootingPose_Stand_Peek_Right number @站立右倾射击
---@field ShootingPose_Crouch_Peek_Left number @下蹲左倾射击
---@field ShootingPose_Crouch_Peek_Right number @下蹲右倾射击
---@field ShootingPose_Crouch number @下蹲射击
---@field ShootingPose_Prone number @下趴射击
---@field ShootingPose_Normal number @AI常规射击，不进行射击起始点偏移校正，只进行简单的ShootOffset校正
EAIShootingPose = {}


---@class FAIFeatureInfo
---@field HP number
---@field DamageScale number
---@field TakeDamageScale number
---@field DropID number
---@field HitRates ULuaArrayHelper<number>
---@field EnemyHpHitRateMap ULuaMapHelper<number, number>
---@field EnemyHpDamageRateMap ULuaMapHelper<number, number>
---@field bHasDeadBox boolean
---@field MissOnPurposeTimeRange FVector2D
---@field OutViewMissOnPurposeTimeRange FVector2D
---@field MissOnPurposeCD number
---@field MissOnPurposeResetTime number
---@field MissOnPurposeHitRate number
---@field NearDeathTargetStopFireTime number
---@field NearDeathTargetFixedHitRate number
---@field bDoMissOnPurposeWhenNearDeathToNormal boolean
---@field NearDeathTargetFixedDamageRate number
FAIFeatureInfo = {}


---@class FAIShootMissInfo
---@field MissMaxRangeTime number
---@field MissMinRangeTime number
---@field MissCDTime number
---@field MissResetTime number
---@field MissResetConfig number
---@field bCanMissShoot boolean
FAIShootMissInfo = {}


---@class FAIShootingPoseOffsetDetailInfo
---@field shootingPose EAIShootingPose
---@field offsetInfo FVector
FAIShootingPoseOffsetDetailInfo = {}


---@class FAIShootingPoseOffsetInfo
---@field ShootingPoseShootPointOffsetArray ULuaArrayHelper<FAIShootingPoseOffsetDetailInfo>
---@field CrouchToStandHeightOffset number
---@field ProneToStandHeightOffset number
---@field ShootingPoseShootPointOffsetMap ULuaMapHelper<EAIShootingPose, FVector>
FAIShootingPoseOffsetInfo = {}


---@class FAITargetInViewOffset
---@field Offset ULuaArrayHelper<FVector>
---@field CrouchOffset ULuaArrayHelper<FVector>
---@field TargetLoc FVector
---@field CurrentOffsetIndex number
---@field bTargetInViewDueToOffset boolean
---@field TargetPawnState EPawnState
FAITargetInViewOffset = {}


---@class FOnAICastSkill : ULuaMulticastDelegate
FOnAICastSkill = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAICastSkill:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FOnAICastSkill:Broadcast(Param1) end


---@class FOnAIPassNavLink : ULuaMulticastDelegate
FOnAIPassNavLink = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FVector, Param2: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAIPassNavLink:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FVector
---@param Param2 FVector
function FOnAIPassNavLink:Broadcast(Param1, Param2) end


---@class FOnAICastSkillDynamic : ULuaMulticastDelegate
FOnAICastSkillDynamic = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkillIndex: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAICastSkillDynamic:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkillIndex number
function FOnAICastSkillDynamic:Broadcast(SkillIndex) end


---@class FOnAIActActive : ULuaSingleDelegate
FOnAIActActive = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAIActActive:Bind(Callback, Obj) end

---执行委托
function FOnAIActActive:Execute() end


---AI基础类 注意：使用继承＋组件的方式来实现。Controller负责一些切换操作和公共的操作。组件负责实现各个AI能力（包括视觉、听觉、攻击、躲避等） 架构说明参考：http://tapd.oa.com/UnknownGame/markdown_wikis/view/#1010168201007560339
---@class ABasicAIController: AAIController, IOnlyActorComponentManagerInterface
---@field AIFeatureID number
---@field DefaultAIFeatureConfigID number
---@field bInitAIAttrValue boolean
---@field AttributeGroup UGameAttributeGroup
---@field AIFeatureInfo FAIFeatureInfo
---@field AIShootMissInfo FAIShootMissInfo
---@field shootingPoseOffsetInfo FAIShootingPoseOffsetInfo
---@field AITargetInViewOffset FAITargetInViewOffset
---@field bBeenShootUseOwnerPlayerHitRate boolean
---@field BehaviorTreePath ULuaArrayHelper<UBehaviorTree> @行为树路径列表
---@field BehaviorTreeIndexRunWhenPossess number @Possess 时运行行为树索引
---@field BehaviorTreeTickInterval number @行为树Tick频率
---@field ActorLocationTetherDistance number
---@field AIFeatureInfoTableName string @AI属性表配置表
---@field AIWeaponRangeTableName string
---@field AIDifficultyInfoTableName string @AI 全局属性配置表
---@field AITagTableName string
---@field HitRateConfigNum number
---@field bMoveable boolean
---@field bInStopMoveLaunching boolean
---@field StopMoveLaunchingRemainTime number
---@field OnAICastSkillDynamicDelegate FOnAICastSkillDynamic
---@field OnAIActActive FOnAIActActive
---@field LastAIWayPointID number
---@field CurAIWayPointID number
---@field CachedCampID number
---@field bUnderCoverFriendlyMonster boolean
---@field bPlayerFriendlyMonster boolean
---@field bRecordAIGiveDamageData boolean
---@field RecordAIGiveDamageDataTime number
---@field bStopMoveWhenLaunched boolean
---@field MaxStopMoveTimeWhenLaunched number
---@field MinStopMoveLaunchXYVelocity number
---@field MinStopMoveLaunchZVelocity number
---@field bIgnoreCollisionChannelWhenStopMoveLaunched boolean
---@field IgnoredCollisionChannelWhenLaunched ECollisionChannel
---@field CollisionChannelResponseWhenFinishLaunch ECollisionResponse
---@field AIAttackDamageScale number
local ABasicAIController = {}

---@param MaxLaunchedTime number
function ABasicAIController:OnCharacterLaunched(MaxLaunchedTime) end

---暴露给蓝图的函数
function ABasicAIController:StopBehavior() end

---重启行为树
function ABasicAIController:RestartBehavior() end

function ABasicAIController:StopBehaviorAsync() end

---@param EventInstigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
function ABasicAIController:ReceivedDamage(EventInstigator, DamageEvent, DamageCauser) end

---@param PathIndex number
function ABasicAIController:RunBehaviorTreeByPathIndex(PathIndex) end

function ABasicAIController:ClearAllFocus() end

---@param IsMovable boolean
function ABasicAIController:SetMovable(IsMovable) end

---@param IsMovable boolean
---@param TimeLimit number
function ABasicAIController:SetMoveableWithTimeLimit(IsMovable, TimeLimit) end

---@return boolean
function ABasicAIController:IsMoveable() end

---@param InFeatureID number
---@return boolean
function ABasicAIController:InitAI(InFeatureID) end

---@return number
function ABasicAIController:GetCurrentOrder() end

---@param CurrentTime number
---@param MissRange FVector2D
---@param MissOnPurposeCD number
function ABasicAIController:UpdateAIMissShootInfo(CurrentTime, MissRange, MissOnPurposeCD) end

---@param PlayerController ASTExtraPlayerController
---@return number
function ABasicAIController:GetRatingDamageFiringAccuRadius(PlayerController) end

---@param PlayerController ASTExtraPlayerController
---@return number
function ABasicAIController:GetRatingDamageScale(PlayerController) end

---@param OtherCtrl AController
---@return boolean
function ABasicAIController:IsCampFriendlyWith(OtherCtrl) end

---CanBeenChooseEnemy是寻敌时调用，CanBeenChooseEnemyWhileBeenAttacked是被攻击时调用
---@param SourceController AController
---@return boolean
function ABasicAIController:CanBeenChooseEnemy(SourceController) end

---@param SourceController AController
---@param AttackDistance number
---@param MemoryTime number
---@return boolean
function ABasicAIController:IsHighestPriorityChooseEnemyWhileBeenAttacked(SourceController, AttackDistance, MemoryTime) end

---@return number
function ABasicAIController:GetHighestPriorityChooseEnemyWhileBeenAttackedHatredValue() end

---@return boolean
function ABasicAIController:CanOtherMonsterCanHurtSelf() end

---@param EventInstigator AController
---@return number
function ABasicAIController:GetAITakeDamageScale(EventInstigator) end

---@param VictimBAIC ABasicAIController
---@param VictimPawn ASTExtraCharacter
---@param ExtraDamageScale number
---@return boolean
function ABasicAIController:GetExtraAIAttackAIDamageScaleBP(VictimBAIC, VictimPawn, ExtraDamageScale) end

---@param PC ASTExtraPlayerController
---@param VictimPawn ASTExtraCharacter
---@param ExtraDamageScale number
---@return boolean
function ABasicAIController:GetExtraAIAttackPlayerDamageScaleBP(PC, VictimPawn, ExtraDamageScale) end

---@param PC ABasicAIController
---@param VictimPawn ASTExtraCharacter
---@param ExtraDamageScale number
---@return boolean
function ABasicAIController:GetExtraAIAttackFakePlayerDamageScaleBP(PC, VictimPawn, ExtraDamageScale) end

---@param KeyName string
---@return boolean
function ABasicAIController:AddBlackboardValueChangedObserver(KeyName) end

---@param KeyName string
---@return boolean
function ABasicAIController:RemoveBlackboardValueChangedObserver(KeyName) end

---@param LastEnemy AActor
---@param NewEnemy AActor
function ABasicAIController:ReceiveAIEnemyChanged(LastEnemy, NewEnemy) end

---@param bIsAttacked boolean
function ABasicAIController:SetIsAttacked(bIsAttacked) end

---@param bGridPathFollowing boolean
function ABasicAIController:SwitchPathFollowComp(bGridPathFollowing) end

---初始化AI属性
---@param InID number
function ABasicAIController:InitAIFeatureInfo(InID) end

---@param InID number
function ABasicAIController:BP_PostInitAIFeatureInfo(InID) end

---@param ChangedKeyName string
function ABasicAIController:ReceiveBlackboardValueChanged(ChangedKeyName) end

---@param InFeatureID number
function ABasicAIController:ReceivePostInitAIFeature(InFeatureID) end

---@return FVector
function ABasicAIController:GetShootStartLocation() end

---@param TeamID number
---@param bSet boolean
function ABasicAIController:SetFriendlyTeam(TeamID, bSet) end

---@param OtherCtrl AController
---@return boolean
function ABasicAIController:IsFriendlyTeam(OtherCtrl) end
