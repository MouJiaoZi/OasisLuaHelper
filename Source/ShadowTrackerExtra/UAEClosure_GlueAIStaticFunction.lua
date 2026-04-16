---@meta

---封装一些角色逻辑需要兼容AI的静态操作方法
---@class UUAEClosure_GlueAIFunction: UBlueprintFunctionLibrary
local UUAEClosure_GlueAIFunction = {}

---@param Character ASTExtraBaseCharacter
---@return number
function UUAEClosure_GlueAIFunction:Get64PlayerKeyIncludingAI(Character) end

---@param PC AController
---@return number
function UUAEClosure_GlueAIFunction:Get64PlayerKeyIncludingAIFromPC(PC) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UUAEClosure_GlueAIFunction:CheckCharacterIsAI(Character) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function UUAEClosure_GlueAIFunction:CheckCharacterIsMachineLearningAI(Character) end
