---@meta

---@class EPESkillEventMonitorType
---@field EPESkillEventMonitorType_Slot number @//*UGC* 不在状态栏显示
---@field EPESkillEventMonitorType_Tags number @//*UGC* 生效时持续显示在状态栏
---@field EPESkillEventMonitorType_None number @不监控槽位或技能
EPESkillEventMonitorType = {}


---@class UPESkillEvent_Skill: UPESkillEventBase
---@field bOnlyOwnerSkill boolean
---@field bOnlySelfSkill boolean
---@field MonitorType EPESkillEventMonitorType
---@field SkillSlots FGameplayTagContainer
---@field SkillTags FGameplayTagContainer
---@field eSkillState EPSkillEventSkillStateEvent
local UPESkillEvent_Skill = {}

---@param InSkillIndex number
function UPESkillEvent_Skill:OnCastSkill_SkillV1(InSkillIndex) end

---@param InSkillIndex number
---@param StopReason UTSkillStopReason
function UPESkillEvent_Skill:OnStopSkill_SkillV1(InSkillIndex, StopReason) end
