---@meta

---@class IGamemodeActorManagerInterface
IGamemodeActorManagerInterface = {}

---@param NewActor AActor
function IGamemodeActorManagerInterface:AppendNewBuildingActor(NewActor) end

---@param NewActor AActor
function IGamemodeActorManagerInterface:RemoveNewBuildingActor(NewActor) end

---@param OutActors ULuaArrayHelper<AActor>
function IGamemodeActorManagerInterface:GetManagedBuildingActors(OutActors) end
