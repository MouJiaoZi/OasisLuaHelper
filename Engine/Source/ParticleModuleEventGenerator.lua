---@meta

---@class FParticleEvent_GenerateInfo
---@field Type EParticleEventType @The type of event.
---@field Frequency number @How often to trigger the event (<= 1 means EVERY time).
---@field ParticleFrequency number @Only fire the first time (collision only).
---@field FirstTimeOnly number @Only fire the first time (collision only).
---@field LastTimeOnly number @Only fire the last time (collision only).
---@field UseReflectedImpactVector number @Use the impact FVector not the hit normal (collision only).
---@field bUseOrbitOffset number @Use the orbit offset when computing the position at which the event occurred.
---@field CustomName string @Should the event tag with a custom name? Leave blank for the default.
---@field ParticleModuleEventsToSendToGame ULuaArrayHelper<UParticleModuleEventSendToGame> @The events we want to fire off when this event has been generated
FParticleEvent_GenerateInfo = {}


---@class UParticleModuleEventGenerator: UParticleModuleEventBase
---@field Events ULuaArrayHelper<FParticleEvent_GenerateInfo>
local UParticleModuleEventGenerator = {}
