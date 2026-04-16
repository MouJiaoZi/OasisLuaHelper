---@meta

---@class UEnvQueryGenerator_BlueprintBase: UEnvQueryGenerator
---@field GeneratorsActionDescription string @A short description of what test does, like "Generate pawn named Joe"
---@field Context UEnvQueryContext @context
---@field GeneratedItemType UEnvQueryItemType @due to the way EQS editor is generating widgets it's there as well It's a bug and we'll fix it
local UEnvQueryGenerator_BlueprintBase = {}

---@param ContextLocations ULuaArrayHelper<FVector>
function UEnvQueryGenerator_BlueprintBase:DoItemGeneration(ContextLocations) end

---@param GeneratedVector FVector
function UEnvQueryGenerator_BlueprintBase:AddGeneratedVector(GeneratedVector) end

---@param GeneratedActor AActor
function UEnvQueryGenerator_BlueprintBase:AddGeneratedActor(GeneratedActor) end
