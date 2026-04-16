---@meta

---@class UAnimInstanceFunctionLibrary: UBlueprintFunctionLibrary
local UAnimInstanceFunctionLibrary = {}

---@param OutputObjClass UAnimFunctionModule_ObjInstance
---@param FromAnimInstanceBase UAnimInstanceBase
function UAnimInstanceFunctionLibrary:GetFunctionModuleObjValueArray_BP(OutputObjClass, FromAnimInstanceBase) end

---@param AnimInstanceBase UAnimInstanceBase
---@param ScriptStructName string
---@param Index number
---@param OutFM FAnimFunctionModule
---@return boolean
function UAnimInstanceFunctionLibrary:GetFunctionModuleStructValue_BP(AnimInstanceBase, ScriptStructName, Index, OutFM) end

---@param AnimInstanceBase UAnimInstanceBase
---@param ScriptStructName string
---@param Index number
---@param InFM FAnimFunctionModule
---@return boolean
function UAnimInstanceFunctionLibrary:SetFunctionModuleValue_BP(AnimInstanceBase, ScriptStructName, Index, InFM) end
