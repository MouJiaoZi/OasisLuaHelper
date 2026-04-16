---@meta

---@class FGenericCharacterColor
---@field ParamName string
---@field DisplayName string
---@field Color FLinearColor
FGenericCharacterColor = {}


---@class FGenericMaterialParam
---@field GenericCharacterColors ULuaArrayHelper<FGenericCharacterColor>
FGenericMaterialParam = {}


---@class FOnGenericMobMoveBlockDelegate : ULuaMulticastDelegate
FOnGenericMobMoveBlockDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: AGenericCharacter, HitResult: FHitResult) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGenericMobMoveBlockDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef AGenericCharacter
---@param HitResult FHitResult
function FOnGenericMobMoveBlockDelegate:Broadcast(SelfRef, HitResult) end


---@class AGenericCharacter: ACharacter, IGenericCharacterInterface, IGenericCharacterBPInterface, IObjectPoolInterface, IDamageableInterface, IBulletHitInterface, IBulletEffectInterface, ITargetFilterInfoProviderInterface, IDamageNumberInterface, ICustomMovementInterface, IAttrModifyInterface, IStateAbilityInterface, IMeleeAttackOwnerInterface, ISkillAbilityInterface, IOwnershipChainInterface, IOnlyActorComponentManagerInterface, IFieldApplyInterface
---@field bShouldCreateMeleeAttackComponent boolean
---@field OnMoveBlockDelegate FOnGenericMobMoveBlockDelegate
---@field CharacterName string @角色名称
---@field CharacterUID number
---@field PlayerKey number
---@field Health FGameAttributeProperty @当前生命值
---@field HealthMax FGameAttributeProperty @最大生命值
---@field SkillCDRecoverRate FGameAttributeProperty @技能急速，值越大技能冷却越快结束
---@field UGCGeneralMoveSpeedScale FGameAttributeProperty
---@field AdditiveSpeedValueWrapper FGameAttributeProperty
---@field HitBackIntensity FGameAttributeProperty
---@field HitBackResist FGameAttributeProperty
---@field TurnAroundViewFocusData FFocusTargetItem
---@field CustomMovementSimulatorRepData FCustomMovementSimulatorRepDataNew
---@field GamePlayTagCustomMovementModePairs FGamePlayTagCustomMovementModePairs
---@field CurveRootMotionRepData FCurveRootMotionRepData
---@field EnterTagStateHandle FOnTagStateChangeDelegate
---@field ExitTagStateHandle FOnTagStateChangeDelegate
---@field InterruptTagStateHandle FOnTagStateChangeDelegate
---@field GenericMaterialParam FGenericMaterialParam
---@field DamageMultiplier ULuaMapHelper<EAvatarDamagePosition, number>
---@field MinLaunchSize number
---@field bInvincible boolean
---@field AdditiveVelocity FVector @在速度场中移动时模拟端需要叠加的速度
local AGenericCharacter = {}

function AGenericCharacter:BPOnRespawned() end

function AGenericCharacter:BPOnRecycled() end

function AGenericCharacter:OnRep_CharacterName() end

function AGenericCharacter:OnRep_UID() end

---@param PrevSkillCDRecoverRate FGameAttributeProperty
function AGenericCharacter:OnRep_SkillCDRecoverRate(PrevSkillCDRecoverRate) end

---@param PrevHealth FGameAttributeProperty
function AGenericCharacter:OnRep_Health(PrevHealth) end

---@param PrevHealthMax FGameAttributeProperty
function AGenericCharacter:OnRep_HealthMax(PrevHealthMax) end

---@param PrevUGCGeneralMoveSpeedScale FGameAttributeProperty
function AGenericCharacter:OnRep_UGCGeneralMoveSpeedScale(PrevUGCGeneralMoveSpeedScale) end

function AGenericCharacter:OnRep_TurnAroundViewFocusData() end

---@param Enabled boolean
function AGenericCharacter:EnableCustomMovement(Enabled) end

---@param PersistComp UPersistBaseComponent
---@param DynamicState FGameplayTag
function AGenericCharacter:OnDynamicStateEnter(PersistComp, DynamicState) end

---@param PersistComp UPersistBaseComponent
---@param DynamicState FGameplayTag
function AGenericCharacter:OnDynamicStateLeave(PersistComp, DynamicState) end

---@param PersistComp UPersistBaseComponent
---@param DynamicState FGameplayTag
function AGenericCharacter:OnDynamicStateInterrupted(PersistComp, DynamicState) end

---@param DynamicState FGameplayTag
function AGenericCharacter:BP_OnDynamicStateEnter(DynamicState) end

---@param DynamicState FGameplayTag
function AGenericCharacter:BP_OnDynamicStateLeave(DynamicState) end

---@param DynamicState FGameplayTag
function AGenericCharacter:BP_OnDynamicStateInterrupted(DynamicState) end

---@param Component UActorComponent
---@return boolean
function AGenericCharacter:BP_IsComponentRelevantForNavigation(Component) end

---Event
---怪物的目标发生变化事件
---生效范围：服务器&客户端
---@param NewTarget AActor @新的目标对象
---@param OldTarget AActor @旧的目标对象
function AGenericCharacter:OnTargetChange_BP(NewTarget, OldTarget) end

function AGenericCharacter:OnRep_CustomMovementSimulatorRepDataNew() end

function AGenericCharacter:OnRep_GamePlayTagCustomMovementModePair() end

function AGenericCharacter:OnRep_CurveRootMotionRepData() end

---@param PrevHitBackIntensity FGameAttributeProperty
function AGenericCharacter:OnRep_HitBackIntensity(PrevHitBackIntensity) end

---@param PrevHitBackResist FGameAttributeProperty
function AGenericCharacter:OnRep_HitBackResist(PrevHitBackResist) end

function AGenericCharacter:OnRep_GenericMaterialParam() end

function AGenericCharacter:GetCharacterColorParams() end

function AGenericCharacter:RefreshGenericMaterial() end

---@param InColors ULuaArrayHelper<FLinearColor>
function AGenericCharacter:ModifyAllMaterialColor(InColors) end

---@param ParamIdx number
---@param InColor FLinearColor
function AGenericCharacter:ModifyMaterialColor(ParamIdx, InColor) end

function AGenericCharacter:OnRep_IsInvincible() end

---@return boolean
function AGenericCharacter:HasFieldLogicLinearVelocityNode() end

---@return FVector
function AGenericCharacter:GetFieldLogicLinearVelocity() end

---是否正在模拟中(实际生效)
---@return boolean
function AGenericCharacter:IsVelocitySimulated() end

---获取叠加速度
---@return FVector
function AGenericCharacter:GetAdditiveVelocity() end

---获取模拟速度(原有速度+叠加速度)
---@return FVector
function AGenericCharacter:GetSimulatedVelocity() end
