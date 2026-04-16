---@meta

---A PlayerState is created for every player on a server (or in a standalone game). PlayerStates are replicated to all clients, and contain network game relevant information about the player, such as playername, score, etc.
---@class APlayerState: AInfo
---@field Score number @Player's current score.
---@field Ping number @Replicated compressed ping for this player (holds ping in msec divided by 4)
---@field PlayerName string @Player name, or blank if none.
---@field PlayerId number @Unique net id number. Actual value varies based on current online subsystem, use it only as a guaranteed unique number per player.
---@field bIsSpectator number @Whether this player is currently a spectator
---@field bOnlySpectator number @Whether this player can only ever be a spectator
---@field bIsABot number @True if this PlayerState is associated with an AIController
---@field bIsInactive number @Means this PlayerState came from the GameMode's InactivePlayerArray
---@field bFromPreviousLevel number @indicates this is a PlayerState from the previous level of a seamless travel, waiting for the player to finish the transition before creating a new one this is used to avoid preserving the PlayerState in the InactivePlayerArray if the player leaves
---@field StartTime number @Elapsed time on server when this PlayerState was first created.
---@field EngineMessageClass ULocalMessage @This is used for sending game agnostic messages that can be localized
---@field SavedNetworkAddress string @Used to match up InactivePlayerState with rejoining playercontroller.
---@field UniqueId FUniqueNetIdRepl @The id used by the network to uniquely identify a player. NOTE: the internals of this property should *never* be exposed to the player as it's transient and opaque in meaning (ie it might mean date/time followed by something else). It is OK to use and pass around this property, though.
---@field PingBucketSize number
local APlayerState = {}

---Replication Notification Callbacks
function APlayerState:OnRep_Score() end

function APlayerState:OnRep_PlayerName() end

function APlayerState:OnRep_bIsInactive() end

function APlayerState:OnRep_UniqueId() end

---@param OldPlayerState APlayerState
function APlayerState:ReceiveOverrideWith(OldPlayerState) end

---@param NewPlayerState APlayerState
function APlayerState:ReceiveCopyProperties(NewPlayerState) end
