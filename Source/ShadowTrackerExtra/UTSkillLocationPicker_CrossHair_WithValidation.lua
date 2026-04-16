---@meta

---@class ESLPCrossHair_WithValidation_Result
---@field ESLPCrossHair_WithValidation_BadRange number @距离不对
---@field ESLPCrossHair_WithValidation_Nothing number @没有目标
ESLPCrossHair_WithValidation_Result = {}


---@class UUTSkillLocationPickerCrossHair_WithValidation: UUTSkillLocationPicker_CrossHair
---@field ResultTips ULuaMapHelper<ESLPCrossHair_WithValidation_Result, number>
---@field ValidClassToPick ULuaArrayHelper<AActor>
---@field BadClassTips ULuaMapHelper<AActor, number>
---@field DistanceToPickedActorSq number
---@field bOnlyOnDS boolean
local UUTSkillLocationPickerCrossHair_WithValidation = {}
