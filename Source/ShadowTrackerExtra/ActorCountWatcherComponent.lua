---@meta

---@class FActorArray
---@field ActorArray ULuaArrayHelper<AActor>
FActorArray = {}


---@class UActorCountWatcherComponent: UActorComponent
local UActorCountWatcherComponent = {}

---@param NewActor AActor
function UActorCountWatcherComponent:AddNewActor(NewActor) end

---@param NewActor AActor
function UActorCountWatcherComponent:RemoveActor(NewActor) end

---@param Class UClass
---@return number
function UActorCountWatcherComponent:GetActorClassNum(Class) end
