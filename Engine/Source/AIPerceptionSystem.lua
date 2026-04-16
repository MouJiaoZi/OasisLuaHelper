---@meta

---By design checks perception between hostile teams
---@class UAIPerceptionSystem: UObject, FTickableGameObject
---@field Senses ULuaArrayHelper<UAISense>
---@field PerceptionAgingRate number
local UAIPerceptionSystem = {}

---@param PerceptionEvent UAISenseEvent
function UAIPerceptionSystem:ReportEvent(PerceptionEvent) end

---@param WorldContextObject UObject
---@param PerceptionEvent UAISenseEvent
function UAIPerceptionSystem:ReportPerceptionEvent(WorldContextObject, PerceptionEvent) end

---@param WorldContextObject UObject
---@param Sense UAISense
---@param Target AActor
---@return boolean
function UAIPerceptionSystem:RegisterPerceptionStimuliSource(WorldContextObject, Sense, Target) end

---@param WorldContextObject UObject
---@param Stimulus FAIStimulus
function UAIPerceptionSystem:GetSenseClassForStimulus(WorldContextObject, Stimulus) end

---@param Actor AActor
---@param EndPlayReason EEndPlayReason
function UAIPerceptionSystem:OnPerceptionStimuliSourceEndPlay(Actor, EndPlayReason) end
