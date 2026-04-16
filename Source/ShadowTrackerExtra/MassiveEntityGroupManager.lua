---@meta

---@class eMEAnimationState
---@field None number
---@field Idle number
---@field Run number
---@field Walk number
---@field MeleeAttack number
---@field RangedAttack number
---@field AttackedIdle number
---@field AttackedWalk number
---@field AttackedRunning number
---@field NearDeath number
---@field Die number
---@field Born number
---@field Climb number
---@field Falling number
eMEAnimationState = {}


---@class eMEAttributeOperation
---@field Add number
---@field Multiply number
---@field Set number
eMEAttributeOperation = {}


---@class FMassiveEntityAttribute
---@field AttributeMap ULuaMapHelper<string, number>
---@field DamageScale ULuaMapHelper<string, number>
FMassiveEntityAttribute = {}


---@class UMassiveEntityFindEnemyStrategy_Default: UObject
---@field UpdateFrequencyConfig number
---@field Name string
local UMassiveEntityFindEnemyStrategy_Default = {}

---@param DeltaTime number
---@return boolean
function UMassiveEntityFindEnemyStrategy_Default:IsTimeToUpdateEnemy(DeltaTime) end


---@class UMassiveEntityFindEnemyStrategy_Player: UMassiveEntityFindEnemyStrategy_Default
---@field MaxRememberEnemyTime number
---@field FindAttackEnemyRadius number
---@field IgnoreStates ULuaArrayHelper<FGameplayTag>
local UMassiveEntityFindEnemyStrategy_Player = {}


---@class UMassiveEntityFindEnemyStrategy_CustomActor: UMassiveEntityFindEnemyStrategy_Default
---@field MaxRememberEnemyTime number
---@field FindAttackEnemyRadius number
---@field CustomActorClass AActor
local UMassiveEntityFindEnemyStrategy_CustomActor = {}


---@class UMassiveEntityGroupManager: UActorComponent
---@field DisableSkillState ULuaSetHelper<eEntityState>
---@field NearDeathTime number
---@field MinWalkSpeed number
---@field MinRunSpeed number
---@field MaxRefreshAnimDeltaTime number
---@field DefaultHitCDTime number
---@field MeshtDelayShowTime number
---@field bServerNotifySkillAnim boolean
---@field State2AnimMap ULuaMapHelper<eEntityState, eMEAnimationState>
---@field MemberAnimArr ULuaArrayHelper<eMEAnimationState>
---@field MemberMeshTransform ULuaArrayHelper<FTransform>
---@field FindEnemyStrategys ULuaArrayHelper<UMassiveEntityFindEnemyStrategy_Default>
---@field LastAttackMeActors ULuaMapHelper<string, AActor>
---@field NotifyAttackedDis number
---@field bIgnoreEnemyOffNavmesh boolean
---@field DefaultEnemyActorOffset FVector
---@field DefaultAttributeConfig ULuaArrayHelper<FMassiveEntityAttribute>
---@field AIFeatureInfoTableName string
---@field HeadDamageRate number
---@field SpeedScaleAttrName string
---@field DamageScaleAttrName string
---@field bIgnoreAIDamage boolean
---@field DebugAttrCD number
---@field bDrawDamageNumberUseRealDamage boolean
---@field bDrawDamageNumber boolean
---@field bDrawDamageUI boolean
---@field bAllowAttackByMonster boolean
local UMassiveEntityGroupManager = {}

function UMassiveEntityGroupManager:InitGroupManager() end

function UMassiveEntityGroupManager:RecycledGroupManager() end

---@param NewActor AActor
---@param Index number
---@param bAdd boolean
function UMassiveEntityGroupManager:OnNotifyMemberEntityChange(NewActor, Index, bAdd) end

function UMassiveEntityGroupManager:ShowISM() end

---@param AttackMePawn ACharacter
function UMassiveEntityGroupManager:NotifyAttacked(AttackMePawn) end

---@param DamagedActor AActor
---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageParams FTakeDamageParams
---@param InstigatedBy AController
---@param DamageCauser AActor
---@return number
function UMassiveEntityGroupManager:MemberTakeAnyDamage(DamagedActor, Damage, DamageEvent, DamageParams, InstigatedBy, DamageCauser) end

---@param DamagedActor AActor
---@param DamageEvent FDamageEvent
---@param DamageParams FTakeDamageParams
---@return number
function UMassiveEntityGroupManager:ModifyDamage(DamagedActor, DamageEvent, DamageParams) end

---@param IDArr ULuaArrayHelper<number>
---@param ValueArr ULuaArrayHelper<number>
function UMassiveEntityGroupManager:BroadcastClientEntityAttrInfo(IDArr, ValueArr) end

---@param Damage number
---@param EventInstigator AController
---@param HitActor AActor
---@param IsHeadShotDamage boolean
---@param DamageTypeClass UDamageType
function UMassiveEntityGroupManager:BroadcastCompactClientsSimulateDamage(Damage, EventInstigator, HitActor, IsHeadShotDamage, DamageTypeClass) end
