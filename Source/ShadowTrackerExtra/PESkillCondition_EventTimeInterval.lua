---@meta

---@class EPESkillEventTimeIntervalType
---@field EventTimeInterval_None number @无
---@field EventTimeInterval_VictimDamage number @受到伤害事件
---@field EventTimeInterval_CauserDamage number @造成伤害事件
---@field EventTimeInterval_BeKilled number @被击杀事件
---@field EventTimeInterval_OnKilled number @击杀事件
---@field EventTimeInterval_BackpackOperate number @背包操作事件
---@field EventTimeInterval_StateChange number @状态改变事件
---@field EventTimeInterval_CharacterOnLanded number @角色落地事件
---@field EventTimeInterval_WeaponHit number @武器击中事件
---@field EventTimeInterval_WeaponFire number @武器开火事件
---@field EventTimeInterval_WeaponReload number @武器换弹事件
---@field EventTimeInterval_WeaponScope number @武器开镜事件
---@field EventTimeInterval_WeaponSwitch number @武器切换事件
---@field EventTimeInterval_Input number @输入事件
---@field EventTimeInterval_Skill number @技能事件
---@field EventTimeInterval_VictimRecover number @受到治疗事件
---@field EventTimeInterval_CauserRecover number @造成治疗事件
---@field EventTimeInterval_HitActor number @碰撞事件
EPESkillEventTimeIntervalType = {}


---并检查当前时间距离上次触发该事件的时间是否满足条件。 只监听有GMP或Delegate的事件类型。
---@class UPESkillCondition_EventTimeInterval: UPESkillConditionBase
---@field EventType EPESkillEventTimeIntervalType
---@field TimeThreshold FFloatGetter
---@field CompareOperation ECompareOperation
---@field AttrValueChangedDelegate FOnAttrValueChangedDynamicDelegate
local UPESkillCondition_EventTimeInterval = {}

---@return boolean
function UPESkillCondition_EventTimeInterval:CheckCondition() end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UPESkillCondition_EventTimeInterval:OnActorHitEvent(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param ItemOperationInfo FItemOperationInfo
function UPESkillCondition_EventTimeInterval:OnBackpackOperationEvent(ItemOperationInfo) end

---@param AttrName string
---@param fCurValue number
function UPESkillCondition_EventTimeInterval:OnAttributeChangedEvent(AttrName, fCurValue) end

---@param PersistComp UPersistBaseComponent
---@param State FGameplayTag
function UPESkillCondition_EventTimeInterval:OnStateChangedEvent(PersistComp, State) end

---@param Hit FHitResult
function UPESkillCondition_EventTimeInterval:OnCharacterLandedEvent(Hit) end

---@param bIsEquipWeapon boolean
---@param pOwner UObject
---@param pNewWeapon UObject
function UPESkillCondition_EventTimeInterval:OnWeaponSwitchGMPEvent(bIsEquipWeapon, pOwner, pNewWeapon) end

---@param ActualRecoverValue number
---@param RecoveryInstigator AController
---@param RecoveryCauser AActor
---@param RecoverTags ULuaArrayHelper<FGameplayTag>
function UPESkillCondition_EventTimeInterval:OnRecoverHealthEvent(ActualRecoverValue, RecoveryInstigator, RecoveryCauser, RecoverTags) end

---@param bIsStop boolean
---@param StateName string
function UPESkillCondition_EventTimeInterval:OnSequenceEndEvent(bIsStop, StateName) end

---@param SkillEventType EPersistEffectClientEvent
---@param TimeStamp number
function UPESkillCondition_EventTimeInterval:OnServerInputEventTriggered(SkillEventType, TimeStamp) end

---@param InSkillIndex number
function UPESkillCondition_EventTimeInterval:OnCastSkill_SkillV1(InSkillIndex) end
