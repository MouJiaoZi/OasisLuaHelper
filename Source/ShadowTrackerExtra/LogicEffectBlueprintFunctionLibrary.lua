---@meta

---@class ULogicEffectBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local ULogicEffectBlueprintFunctionLibrary = {}

---@param SeqWrapper FLogicEffectSequenceWrapper
---@param EffectOwner AActor
function ULogicEffectBlueprintFunctionLibrary:InitLogicEffectSequenceWrapper(SeqWrapper, EffectOwner) end

---@param SeqWrapper FLogicEffectSequenceWrapper
---@param OptionalOp ELogicEffectOp
---@return boolean
function ULogicEffectBlueprintFunctionLibrary:ProcessLogicEffectSequenceWrapper(SeqWrapper, OptionalOp) end

---@param Effect ULogicEffectBase
---@param OptionalOp ELogicEffectOp
function ULogicEffectBlueprintFunctionLibrary:ProcessLogicEffectWithOp(Effect, OptionalOp) end
