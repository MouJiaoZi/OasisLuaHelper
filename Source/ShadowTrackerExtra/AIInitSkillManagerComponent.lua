---@meta

---AI初始技能管理器组件
---@class UAIInitSkillManagerComponent: UAIAbilityComponent
---@field InitSkillClassesMap ULuaMapHelper<EUTSkillEntry, AUTSkill>
local UAIInitSkillManagerComponent = {}

---@param NewPawn APawn
function UAIInitSkillManagerComponent:OnAIPossessPawn(NewPawn) end
