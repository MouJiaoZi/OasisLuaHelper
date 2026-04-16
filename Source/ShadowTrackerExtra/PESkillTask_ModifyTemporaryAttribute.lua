---@meta

---@class UPESkillTask_ModifyTemporaryAttribute: UPESkillTaskBase, ILocalCalculationVariableExecutorObjInterface
---@field CalculatorClass USTExtraGameMagnitudeCalculation
---@field AttrItems ULuaArrayHelper<FPESkillAttributeItem>
local UPESkillTask_ModifyTemporaryAttribute = {}

---@param pActor AActor
function UPESkillTask_ModifyTemporaryAttribute:GetUGCMagnitudeCalculation(pActor) end
