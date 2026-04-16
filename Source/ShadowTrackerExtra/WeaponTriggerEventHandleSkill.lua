---@meta

---武器事件处理器技能相关
---@class UWeaponTriggerEventHandleSkill: UWeaponTriggerEventHandleBase
---@field SkillConfigList ULuaArrayHelper<FItemSkillsConfig>
---@field bEnableMelee boolean
local UWeaponTriggerEventHandleSkill = {}

---@param Weapon ASTExtraWeapon
function UWeaponTriggerEventHandleSkill:GetWeaponSkillIDList(Weapon) end

---@return boolean
function UWeaponTriggerEventHandleSkill:IsTriggerSkillConditionOK() end

---@param Event EWeaponTriggerEvent
---@param EventData string
function UWeaponTriggerEventHandleSkill:ProcessTriggerEventInternal(Event, EventData) end

---@param Weapon ASTExtraWeapon
function UWeaponTriggerEventHandleSkill:GetSelfWeaponSkillIDList(Weapon) end

---@param Weapon ASTExtraWeapon
function UWeaponTriggerEventHandleSkill:GetSelfWeaponSkillConfigList(Weapon) end

---@param Weapon ASTExtraWeapon
---@param EventData string
---@return FItemSkillsConfig
function UWeaponTriggerEventHandleSkill:GetSelfWeaponSpecificSkillConfig(Weapon, EventData) end

---@param Weapon ASTExtraWeapon
---@param InSkillConfig FItemSkillsConfig
---@return boolean
function UWeaponTriggerEventHandleSkill:IsSelfWeaponSpecificSkillConfig(Weapon, InSkillConfig) end
