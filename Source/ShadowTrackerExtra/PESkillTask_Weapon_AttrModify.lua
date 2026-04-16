---@meta

---武器属性修改任务 监听武器切换事件，并对特定槽位的武器属性进行修改 任务结束时，恢复武器的原始属性
---@class UPESkillTask_Weapon_AttrModify: UPESkillTaskPeriod
---@field TargetType EPESkillSelectTarget
---@field AttrItems ULuaArrayHelper<FPESkillAttributeItem>
---@field bRecoverWhenDeactivate boolean
---@field arrChangeWeaponAttributeTask ULuaArrayHelper<UGameplayTask_ChangeWeaponAttribute>
local UPESkillTask_Weapon_AttrModify = {}
