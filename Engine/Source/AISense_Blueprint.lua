---@meta

---@class UAISense_Blueprint: UAISense
---@field ListenerDataType UUserDefinedStruct
---@field ListenerContainer ULuaArrayHelper<UAIPerceptionComponent>
---@field UnprocessedEvents ULuaArrayHelper<UAISenseEvent>
local UAISense_Blueprint = {}

---returns requested amount of time to pass until next frame. Return 0 to get update every frame (WARNING: hits performance)
---@param EventsToProcess ULuaArrayHelper<UAISenseEvent>
---@return number
function UAISense_Blueprint:OnUpdate(EventsToProcess) end

---@param ActorListener AActor
---@param PerceptionComponent UAIPerceptionComponent
function UAISense_Blueprint:OnListenerRegistered(ActorListener, PerceptionComponent) end

---@param ActorListener AActor
---@param PerceptionComponent UAIPerceptionComponent
function UAISense_Blueprint:OnListenerUpdated(ActorListener, PerceptionComponent) end

---called when a listener unregistered from this sense. Most often this is called due to actor's death
---@param ActorListener AActor
---@param PerceptionComponent UAIPerceptionComponent
function UAISense_Blueprint:OnListenerUnregistered(ActorListener, PerceptionComponent) end

---@param ListenerActors ULuaArrayHelper<AActor>
function UAISense_Blueprint:GetAllListenerActors(ListenerActors) end

---@param ListenerComponents ULuaArrayHelper<UAIPerceptionComponent>
function UAISense_Blueprint:GetAllListenerComponents(ListenerComponents) end

---called when sense's instance gets notified about new pawn that has just been spawned
---@param NewPawn APawn
function UAISense_Blueprint:K2_OnNewPawn(NewPawn) end
