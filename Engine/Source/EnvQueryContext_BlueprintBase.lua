---@meta

---@class UEnvQueryContext_BlueprintBase: UEnvQueryContext
local UEnvQueryContext_BlueprintBase = {}

---@param QuerierObject UObject
---@param QuerierActor AActor
---@param ResultingActor AActor
function UEnvQueryContext_BlueprintBase:ProvideSingleActor(QuerierObject, QuerierActor, ResultingActor) end

---@param QuerierObject UObject
---@param QuerierActor AActor
---@param ResultingLocation FVector
function UEnvQueryContext_BlueprintBase:ProvideSingleLocation(QuerierObject, QuerierActor, ResultingLocation) end

---@param QuerierObject UObject
---@param QuerierActor AActor
---@param ResultingActorsSet ULuaArrayHelper<AActor>
function UEnvQueryContext_BlueprintBase:ProvideActorsSet(QuerierObject, QuerierActor, ResultingActorsSet) end

---@param QuerierObject UObject
---@param QuerierActor AActor
---@param ResultingLocationSet ULuaArrayHelper<FVector>
function UEnvQueryContext_BlueprintBase:ProvideLocationsSet(QuerierObject, QuerierActor, ResultingLocationSet) end
