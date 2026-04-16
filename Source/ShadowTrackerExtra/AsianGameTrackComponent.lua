---@meta

---@class UAsianGameTrackComponent: UActorComponent
---@field bDrawDebug number
---@field DrawDebugNotInTrackColor FColor
---@field DrawDebugInTrackColor FColor
---@field DrawDebugLifeTime number
---@field DrawDebugThickness number
---@field DebugDrawArrowSize number
---@field SetOfActorsInTrack ULuaSetHelper<AActor>
---@field OnActorEnteredAsianGameTrackDynamicDelegate FOnActorEnteredAsianGameTrackDynamicDelegate
---@field OnActorExitedAsianGameTrackDynamicDelegate FOnActorExitedAsianGameTrackDynamicDelegate
local UAsianGameTrackComponent = {}

---@param Actor AActor
---@return boolean
function UAsianGameTrackComponent:IsActorInTrack(Actor) end

---@param Actor AActor
---@param Entereds ULuaSetHelper<UAsianGameTrackComponent>
---@param Exiteds ULuaSetHelper<UAsianGameTrackComponent>
function UAsianGameTrackComponent:InvalidateActorInTrack(Actor, Entereds, Exiteds) end

---@param Actor AActor
function UAsianGameTrackComponent:BroadcastActorEnteredAsianGameTrack(Actor) end

---@param Actor AActor
function UAsianGameTrackComponent:BroadcastActorExitedAsianGameTrack(Actor) end
