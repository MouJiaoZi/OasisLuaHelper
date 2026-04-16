---@meta

---@class UNewFPPAnimFMObjFunctionLibrary: UBlueprintFunctionLibrary
local UNewFPPAnimFMObjFunctionLibrary = {}

---@param InCharacter ASTExtraBaseCharacter
---@param InCurveName string
---@param OutValue number
---@return boolean
function UNewFPPAnimFMObjFunctionLibrary:FindTPPCurveValue(InCharacter, InCurveName, OutValue) end

---@param InCharacter ASTExtraBaseCharacter
---@param InCurveName string
---@return number
function UNewFPPAnimFMObjFunctionLibrary:GetTPPCurveValue(InCharacter, InCurveName) end
