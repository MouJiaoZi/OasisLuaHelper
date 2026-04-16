---@meta

---@class UUAEClosure_MiscStaticFunction: UBlueprintFunctionLibrary
local UUAEClosure_MiscStaticFunction = {}

---@param Character ACharacter
function UUAEClosure_MiscStaticFunction:GetPartTypeSockets(Character) end

---@param QuitInteractionReason EQuitInteractionReason
---@return EPersistEffectUnApplyReason
function UUAEClosure_MiscStaticFunction:QuitInteractionReasonConvertToUnApplyReason(QuitInteractionReason) end
