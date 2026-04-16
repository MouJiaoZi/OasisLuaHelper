---@meta

---@class ULT_PESkillTask_EnablePawnStateInterrupted: UPESkillTaskBase, ILuaInterface
---@field LuaPath string
---@field bFinalState boolean
---@field RemoveActiveTags FGameplayTagContainer
---@field EnableDisabledTags FGameplayTagContainer
---@field InterruptedTags FGameplayTagContainer
---@field bCheckAlreadyExist boolean
---@field IgnoreCheckExistTags FGameplayTagContainer
local ULT_PESkillTask_EnablePawnStateInterrupted = {}

---@return string
function ULT_PESkillTask_EnablePawnStateInterrupted:GetLuaModule() end
