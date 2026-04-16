---@meta

---GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase. It exists on both the client and the server and is fully replicated.
---@class AGameStateBase: AInfo
---@field GameModeClass AGameModeBase @Class of the server's game mode, assigned by GameModeBase.
---@field SpectatorClass ASpectatorPawn @Class used by spectators, assigned by GameModeBase.
---@field PlayerArray ULuaArrayHelper<APlayerState> @Array of all PlayerStates, maintained on both server and clients (PlayerStates are always relevant)
---@field bReplicatedHasBegunPlay boolean @Replicated when GameModeBase->StartPlay has been called so the client will also start play
---@field ReplicatedWorldTimeSeconds number @Server TimeSeconds. Useful for syncing up animation and gameplay.
---@field ServerWorldTimeSecondsDelta number @The difference from the local world's TimeSeconds and the server world's TimeSeconds.
---@field ServerWorldTimeSecondsUpdateFrequency number @Frequency that the server updates the replicated TimeSeconds from the world. Set to zero to disable periodic updates.
---@field bRecordControllerReplay boolean @If use rec ctrl in replay
---@field PauseInfo boolean
---@field OnPauseState FPauseStateDelegate
local AGameStateBase = {}

---Returns the simulated TimeSeconds on the server, will be synchronized on client and server
---@return number
function AGameStateBase:GetServerWorldTimeSeconds() end

---Returns the simulated TimeSeconds on the server while playing replay, with fastforward skipped time considered
---@return number
function AGameStateBase:GetServerWorldTimeSecondsForReplay() end

---Returns true if the world has started play (called BeginPlay on actors)
---@return boolean
function AGameStateBase:HasBegunPlay() end

---Returns true if the world has started match (called MatchStarted callbacks)
---@return boolean
function AGameStateBase:HasMatchStarted() end

---Returns the time that should be used as when a player started
---@param Controller AController
---@return number
function AGameStateBase:GetPlayerStartTime(Controller) end

---Returns how much time needs to be spent before a player can respawn
---@param Controller AController
---@return number
function AGameStateBase:GetPlayerRespawnDelay(Controller) end

---GameModeBase class notification callback.
function AGameStateBase:OnRep_GameModeClass() end

---Callback when we receive the spectator class
function AGameStateBase:OnRep_SpectatorClass() end

---By default calls BeginPlay and StartMatch
function AGameStateBase:OnRep_ReplicatedHasBegunPlay() end

---Allows clients to calculate ServerWorldTimeSecondsDelta
---@param OldValue number
function AGameStateBase:OnRep_ReplicatedWorldTimeSeconds(OldValue) end

function AGameStateBase:OnRep_PauseInfo() end
