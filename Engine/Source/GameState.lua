---@meta

---GameState is a subclass of GameStateBase that behaves like a multiplayer match-based game. It is tied to functionality in GameMode.
---@class AGameState: AGameStateBase
---@field MatchState string @What match state we are currently in
---@field PreviousMatchState string @Previous map state, used to handle if multiple transitions happen per frame
---@field ElapsedTime number @Elapsed game time since match has started.
local AGameState = {}

---Match state has changed
function AGameState:OnRep_MatchState() end

---Gives clients the chance to do something when time gets updates
function AGameState:OnRep_ElapsedTime() end
