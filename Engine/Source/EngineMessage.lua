---@meta

---@class UEngineMessage: ULocalMessage
---@field FailedPlaceMessage string @Message displayed in message dialog when player pawn fails to spawn because no playerstart was available.
---@field MaxedOutMessage string @Message when player join attempt is refused because the server is at capacity.
---@field EnteredMessage string @Message when a new player enters the game.
---@field LeftMessage string @Message when a player leaves the game.
---@field GlobalNameChange string @Message when a player changes his name.
---@field SpecEnteredMessage string @Message when a new spectator enters the server (if spectator has a player name).
---@field NewPlayerMessage string @Message when a new player enters the server (if player is unnamed).
---@field NewSpecMessage string @Message when a new spectator enters the server (if spectator is unnamed).
local UEngineMessage = {}
