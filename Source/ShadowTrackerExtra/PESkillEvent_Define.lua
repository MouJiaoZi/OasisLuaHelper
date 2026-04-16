---@meta

---@class ESkillEventTargetType
---@field ESkillEventCampRelationType_Self number @只选自己
ESkillEventTargetType = {}


---@class ESkillEventTargetCampType
---@field ESkillEventCampRelationType_Same number @所有友军阵营
---@field ESkillEventCampRelationType_Enemy number @所有敌人
---@field ESkillEventCampRelationType_All number @全部（包含自己）
ESkillEventTargetCampType = {}


---@class ESkillEventAttribueOperatingType
---@field ESkillEventAttribueOperatingType_Change number @当属性发生变化改变
ESkillEventAttribueOperatingType = {}


---@class ESkillEventWeaponOperatingType
---@field ESkillEventWeaponOperatingType_Reload number @换弹
---@field ESkillEventWeaponOperatingType_Fired number @开火
---@field ESkillEventWeaponOperatingType_Stop number @停火
---@field ESkillEventWeaponOperatingType_Change number @换武器
---@field ESkillEventWeaponOperatingType_ScopeIn number @开镜
---@field ESkillEventWeaponOperatingType_ScopeOut number @关镜
---@field ESkillEventWeaponOperatingType_Pickup number @拾取武器
ESkillEventWeaponOperatingType = {}


---@class ESkillEventAllowdActiveType
---@field ESkillEventAllowdActiveType_Init number @当初始化时激活
ESkillEventAllowdActiveType = {}


---@class ESkillEventDamageEventSelectType
---@field ESkillEventDamageEventSelectType_Victim number @被伤害的人
---@field ESkillEventDamageEventSelectType_Causer number @造成伤害的人
ESkillEventDamageEventSelectType = {}


---@class ESkillEventPassiveType
---@field ESkillEventPassiveType_Triggered number @事件触发被动
---@field ESkillEventPassiveType_Periodic number @状态触发被动
ESkillEventPassiveType = {}


---@class EPSkillEventAttributeConditionType
---@field EPSkillEventAttributeConditionType_CharacterAttribute number @角色属性
---@field EPSkillEventAttributeConditionType_CharacterState number @角色状态
EPSkillEventAttributeConditionType = {}


---@class EPESkillEventConditionMatchType
---@field EPESkillEventConditionMatchType_All number @全部满足
---@field EPESkillEventConditionMatchType_Any number @满足任意一个
EPESkillEventConditionMatchType = {}


---@class EPSkillEventStateType
---@field EPSkillEventStateType_Satisfied number @已满足条件
---@field EPSkillEventStateType_UnSatisfied number @未满足条件
EPSkillEventStateType = {}


---@class EPSkillEventWeaponHitCounterType
---@field EPSkillEventWeaponHitCounterType_Once number @执行一次
---@field EPSkillEventWeaponHitCounterType_Repeat number @重复执行
EPSkillEventWeaponHitCounterType = {}


---@class EPSkillEventWeaponHitPartType
---@field EPSkillEventWeaponHitPartType_All number @全部
---@field EPSkillEventWeaponHitPartType_Head number @头部
---@field EPSkillEventWeaponHitPartType_Body number @身体
EPSkillEventWeaponHitPartType = {}


---@class EPSkillEventSkillStateEvent
---@field EPSkillEventSkillStateEvent_Any number @任意
---@field EPSkillEventSkillStateEvent_Activate number @激活
---@field EPSkillEventSkillStateEvent_Complete number @完成
---@field EPSkillEventSkillStateEvent_Interrupt number @中断
---@field EPSkillEventSkillStateEvent_Cancel number @取消
---@field EPSkillEventSkillStateEvent_Merge number @合并
EPSkillEventSkillStateEvent = {}


---@class ESkillEventWeaponScopeType
---@field ESkillEventWeaponScopeType_None number @不监控
---@field ESkillEventWeaponScopeType_ScopeIn number @开镜
---@field ESkillEventWeaponScopeType_ScopeOut number @关镜
ESkillEventWeaponScopeType = {}


---@class ESkillEventRecoverListenTimer
---@field ESkillEventRecoverListenTimer_Before number @监听治疗前
---@field ESkillEventRecoverListenTimer_After number @监听治疗后
ESkillEventRecoverListenTimer = {}


---@class FPESkillWeaponHitCounterConfig
---@field CounterType EPSkillEventWeaponHitCounterType
---@field TargetValue FIntGetter @计数器达到该值时条件满足
---@field DamageTags FGameplayTagContainer
---@field DamagePosition EPSkillEventWeaponHitPartType
FPESkillWeaponHitCounterConfig = {}
