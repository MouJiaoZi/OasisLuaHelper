---@meta

---@class ABROBStateTeam_DeathMatch: ASTExtraOBState
local ABROBStateTeam_DeathMatch = {}

---@param PlayerStateData FDeathMatchPlayerStateData
function ABROBStateTeam_DeathMatch:DMServer_OnAddPlayerStateData(PlayerStateData) end

---@param InPlayerKey number
function ABROBStateTeam_DeathMatch:DMServer_OnRemovePlayerStateData(InPlayerKey) end

---@param KiilerKey number
---@param VictimKey number
---@param AssisterKeys ULuaArrayHelper<number>
---@param DamageEvent FDamageEvent
function ABROBStateTeam_DeathMatch:DMServer_OnPlayerKill(KiilerKey, VictimKey, AssisterKeys, DamageEvent) end

---@param KiilerKey number
---@param VictimKey number
function ABROBStateTeam_DeathMatch:DMServer_OnPlayerKillEnd(KiilerKey, VictimKey) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalNotifyReason EDeathMatchGlobalNotifyReason
function ABROBStateTeam_DeathMatch:DMServer_OnGlobalNotify(KillerKey, VictimKey, GlobalNotifyReason) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalAudioReason EDeathMatchGlobalAudioType
function ABROBStateTeam_DeathMatch:DMServer_OnGlobalAudio(KillerKey, VictimKey, GlobalAudioReason) end

function ABROBStateTeam_DeathMatch:ServerRPC_RequestSyncDeathMatchBattleData() end

---@param DeathMatchBattleData FDeathMatchBattleData
function ABROBStateTeam_DeathMatch:ClientRPC_SyncDeathMatchBattleData(DeathMatchBattleData) end

---@param InPlayerKey number
---@param InTeamID number
---@param IsAIPlayer boolean
---@param DeathMatchPlayerInfo FDeathMatchPlayerInfo
function ABROBStateTeam_DeathMatch:ClientRPC_BroadcastAddPlayerStateData(InPlayerKey, InTeamID, IsAIPlayer, DeathMatchPlayerInfo) end

---@param InPlayerKey number
function ABROBStateTeam_DeathMatch:ClientRPC_BroadcastRemovePlayerStateData(InPlayerKey) end

---@param KiilerKey number
---@param VictimKey number
---@param AssisterKeys ULuaArrayHelper<number>
---@param DamageEvent FDamageEvent
---@param KillFrameCount number
function ABROBStateTeam_DeathMatch:ClientRPC_BroadcastPlayerKill(KiilerKey, VictimKey, AssisterKeys, DamageEvent, KillFrameCount) end

---@param KiilerKey number
---@param VictimKey number
function ABROBStateTeam_DeathMatch:ClientRPC_BroadcastPlayerKillEnd(KiilerKey, VictimKey) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalNotifyReason EDeathMatchGlobalNotifyReason
function ABROBStateTeam_DeathMatch:ClientRPC_BroadcastDeathMatchGlobalNotify(KillerKey, VictimKey, GlobalNotifyReason) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalAudioReason EDeathMatchGlobalAudioType
function ABROBStateTeam_DeathMatch:ClientRPC_BroadcastDeathMatchGlobalAudio(KillerKey, VictimKey, GlobalAudioReason) end
