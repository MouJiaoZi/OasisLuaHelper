---@meta

---GameMode is a subclass of GameModeBase that behaves like a multiplayer match-based game. It has default behavior for picking spawn points and match state. If you want a simpler base, inherit from GameModeBase instead.
---@class AGameMode: AGameModeBase
---@field MatchState string @What match state we are currently in
---@field bDelayedStart number @Whether the game should immediately start when the first player logs in. Affects the default behavior of ReadyToStartMatch
---@field NumSpectators number @Current number of spectators.
---@field NumPlayers number @Current number of human players.
---@field NumBots number @number of non-human players (AI controlled but participating as a player).
---@field MinRespawnDelay number @Minimum time before player can respawn after dying.
---@field NumTravellingPlayers number @Number of players that are still traveling from a previous map
---@field EngineMessageClass ULocalMessage @Contains strings describing localized game agnostic messages.
---@field InactivePlayerArray ULuaArrayHelper<APlayerState> @PlayerStates of players who have disconnected from the server (saved in case they reconnect)
---@field bEnabelPawnPool boolean @Weather to enable Gamemode Pawn Pool
---@field InactivePlayerStateLifeSpan number @Time a playerstate will stick around in an inactive state after a player logout
---@field bHandleDedicatedServerReplays boolean @If true, dedicated servers will record replays when HandleMatchHasStarted/HandleMatchHasStopped is called
local AGameMode = {}

---Returns true if the match state is InProgress or other gameplay state
---@return boolean
function AGameMode:IsMatchInProgress() end

---Returns true if the match state is WaitingPostMatch or later
---@return boolean
function AGameMode:HasMatchEnded() end

---Transition from WaitingToStart to InProgress. You can call this manually, will also get called if ReadyToStartMatch returns true
function AGameMode:StartMatch() end

---Transition from InProgress to WaitingPostMatch. You can call this manually, will also get called if ReadyToEndMatch returns true
function AGameMode:EndMatch() end

---Restart the game, by default travel to the current map
function AGameMode:RestartGame() end

---Report that a match has failed due to unrecoverable error
function AGameMode:AbortMatch() end

---Implementable event to respond to match state changes
---@param NewState string
function AGameMode:K2_OnSetMatchState(NewState) end

---@return boolean
function AGameMode:ReadyToStartMatch() end

---@return boolean
function AGameMode:ReadyToEndMatch() end

---Exec command to broadcast a string to all players
---@param Msg string
function AGameMode:Say(Msg) end
