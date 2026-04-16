---@meta

---@class FReplayTeamScore
---@field RedTeamScore number
---@field BlueTeamScore number
FReplayTeamScore = {}


---@class FOnDeathMatchTeamScoreChangeDelegate : ULuaSingleDelegate
FOnDeathMatchTeamScoreChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchTeamScoreChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnDeathMatchTeamScoreChangeDelegate:Execute() end


---@class FOnDeathMatchPlayerScoreDatasChangeDelegate : ULuaSingleDelegate
FOnDeathMatchPlayerScoreDatasChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchPlayerScoreDatasChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnDeathMatchPlayerScoreDatasChangeDelegate:Execute() end


---@class FOnDeathMatchTeamAddPlayerDelegate : ULuaMulticastDelegate
FOnDeathMatchTeamAddPlayerDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerData: FDeathMatchPlayerStateData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchTeamAddPlayerDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerData FDeathMatchPlayerStateData
function FOnDeathMatchTeamAddPlayerDelegate:Broadcast(PlayerData) end


---@class FOnDeathMatchTeamRemovePlayerDelegate : ULuaMulticastDelegate
FOnDeathMatchTeamRemovePlayerDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchTeamRemovePlayerDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnDeathMatchTeamRemovePlayerDelegate:Broadcast(PlayerKey) end


---@class FOnDeathMatchGlobalNotifyDelegate : ULuaMulticastDelegate
FOnDeathMatchGlobalNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillerData: FDeathMatchPlayerStateData, VictimerData: FDeathMatchPlayerStateData, GlobalNotifyReason: EDeathMatchGlobalNotifyReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchGlobalNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillerData FDeathMatchPlayerStateData
---@param VictimerData FDeathMatchPlayerStateData
---@param GlobalNotifyReason EDeathMatchGlobalNotifyReason
function FOnDeathMatchGlobalNotifyDelegate:Broadcast(KillerData, VictimerData, GlobalNotifyReason) end


---@class FOnDeathMatchGlobalAudioDelegate : ULuaMulticastDelegate
FOnDeathMatchGlobalAudioDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillerData: FDeathMatchPlayerStateData, VictimerData: FDeathMatchPlayerStateData, GlobalNotifyReason: EDeathMatchGlobalAudioType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchGlobalAudioDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillerData FDeathMatchPlayerStateData
---@param VictimerData FDeathMatchPlayerStateData
---@param GlobalNotifyReason EDeathMatchGlobalAudioType
function FOnDeathMatchGlobalAudioDelegate:Broadcast(KillerData, VictimerData, GlobalNotifyReason) end


---@class FOnDeathMatchGameEndDelegate : ULuaMulticastDelegate
FOnDeathMatchGameEndDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, WinTeamID: number, GameEndType: EDeathMatchGameEndType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchGameEndDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param WinTeamID number
---@param GameEndType EDeathMatchGameEndType
function FOnDeathMatchGameEndDelegate:Broadcast(WinTeamID, GameEndType) end


---@class FDMServer_OnAddPlayerStateDataDelegate : ULuaMulticastDelegate
FDMServer_OnAddPlayerStateDataDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerData: FDeathMatchPlayerStateData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDMServer_OnAddPlayerStateDataDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerData FDeathMatchPlayerStateData
function FDMServer_OnAddPlayerStateDataDelegate:Broadcast(PlayerData) end


---@class FDMServer_OnRemovePlayerStateDataDelegate : ULuaMulticastDelegate
FDMServer_OnRemovePlayerStateDataDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDMServer_OnRemovePlayerStateDataDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FDMServer_OnRemovePlayerStateDataDelegate:Broadcast(PlayerKey) end


---@class FDMServer_OnPlayerKillEndDelegate : ULuaMulticastDelegate
FDMServer_OnPlayerKillEndDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KiilerKey: number, VictimKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDMServer_OnPlayerKillEndDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KiilerKey number
---@param VictimKey number
function FDMServer_OnPlayerKillEndDelegate:Broadcast(KiilerKey, VictimKey) end


---@class FDMServer_OnGlobalNotifyDelegate : ULuaMulticastDelegate
FDMServer_OnGlobalNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillerKey: number, VictimKey: number, GlobalNotifyReason: EDeathMatchGlobalNotifyReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDMServer_OnGlobalNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillerKey number
---@param VictimKey number
---@param GlobalNotifyReason EDeathMatchGlobalNotifyReason
function FDMServer_OnGlobalNotifyDelegate:Broadcast(KillerKey, VictimKey, GlobalNotifyReason) end


---@class FDMServer_OnGlobalAudioDelegate : ULuaMulticastDelegate
FDMServer_OnGlobalAudioDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillerKey: number, VictimKey: number, GlobalAudioReason: EDeathMatchGlobalAudioType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDMServer_OnGlobalAudioDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillerKey number
---@param VictimKey number
---@param GlobalAudioReason EDeathMatchGlobalAudioType
function FDMServer_OnGlobalAudioDelegate:Broadcast(KillerKey, VictimKey, GlobalAudioReason) end


---@class FDMServer_OnPlayerKillDelegate : ULuaMulticastDelegate
FDMServer_OnPlayerKillDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KiilerKey: number, VictimKey: number, AssisterKeys: ULuaArrayHelper<number>, DamageEvent: FDamageEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDMServer_OnPlayerKillDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KiilerKey number
---@param VictimKey number
---@param AssisterKeys ULuaArrayHelper<number>
---@param DamageEvent FDamageEvent
function FDMServer_OnPlayerKillDelegate:Broadcast(KiilerKey, VictimKey, AssisterKeys, DamageEvent) end


---@class FOnDeathMatchTeamScoreChangeReplayDelegate : ULuaSingleDelegate
FOnDeathMatchTeamScoreChangeReplayDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchTeamScoreChangeReplayDelegate:Bind(Callback, Obj) end

---执行委托
function FOnDeathMatchTeamScoreChangeReplayDelegate:Execute() end


---@class FARModeTeamMaxScoreReplayDelegate : ULuaMulticastDelegate
FARModeTeamMaxScoreReplayDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, iTeamID: number, iMaxScore: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FARModeTeamMaxScoreReplayDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param iTeamID number
---@param iMaxScore number
function FARModeTeamMaxScoreReplayDelegate:Broadcast(iTeamID, iMaxScore) end


---@class FARModeTeamMaxPlayerChangedDelegate : ULuaMulticastDelegate
FARModeTeamMaxPlayerChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, iTeamID: number, PlayerUID: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FARModeTeamMaxPlayerChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param iTeamID number
---@param PlayerUID string
function FARModeTeamMaxPlayerChangedDelegate:Broadcast(iTeamID, PlayerUID) end


---@class ABRGameStateTeam_DeathMatch: ASTExtraGameStateBase
---@field DeathMatchSubModeType EDeathMatchSubModeType
---@field RemainMatchTime number
---@field DeathMatchWinScore number
---@field RespawnInvincibleTime number
---@field Score_Kill number
---@field ContinuouKillNum number
---@field SuperGodKillNum number
---@field GameComingEndNotify_RemainKillNum number
---@field GameComingEndNotify_RemainTime number
---@field GameComingEndNotify_HalfTime number
---@field replayTeamScore FReplayTeamScore
---@field bCheckKilledPlayerNotify boolean
---@field ReplayRedTeamMaxScore number
---@field ReplayBlueTeamMaxScore number
---@field ARModeTeamMaxScoreReplayDelegate FARModeTeamMaxScoreReplayDelegate
---@field ReplayMaxRedPlayerUID string
---@field ReplayMaxBluePlayerUID string
---@field ARModeTeamMaxPlayerChangedDelegate FARModeTeamMaxPlayerChangedDelegate
---@field SelectedArmsRaceWeaponGroupID number
---@field bUseTopPlayerScoreAsTeamScore boolean
---@field MedalDataTableName string
---@field DeathMatchWeaponConfigTableName string
---@field DeathMatchTeamScoreDatas ULuaArrayHelper<FDeathMatchTeamScoreData>
---@field ReplayDeathMatchTeamScoreDatas ULuaArrayHelper<FDeathMatchTeamScoreData>
---@field OnLookReplayDeathMatchTeamScoreDatas ULuaArrayHelper<FDeathMatchTeamScoreData>
---@field TDMTeamBattleDatas ULuaArrayHelper<FTDMTeamBattleData>
---@field TDMPlayerBattleDatas ULuaArrayHelper<FTDMPlayerBattleData>
---@field bRepIsAlreadyFirstKill boolean
---@field SettingName_Deathcamera string
---@field SettingName_Deathcamera_MenuOpenKey number
---@field DeathMatchMedalPriorityTable ULuaMapHelper<number, number>
---@field DMServer_OnAddPlayerStateDataDelegate FDMServer_OnAddPlayerStateDataDelegate
---@field DMServer_OnRemovePlayerStateDataDelegate FDMServer_OnRemovePlayerStateDataDelegate
---@field DMServer_OnPlayerKillDelegate FDMServer_OnPlayerKillDelegate
---@field DMServer_OnPlayerKillEndDelegate FDMServer_OnPlayerKillEndDelegate
---@field DMServer_OnGlobalNotifyDelegate FDMServer_OnGlobalNotifyDelegate
---@field DMServer_OnGlobalAudioDelegate FDMServer_OnGlobalAudioDelegate
---@field OnDeathMatchTeamAddPlayerDelegate FOnDeathMatchTeamAddPlayerDelegate
---@field OnDeathMatchTeamRemovePlayerDelegate FOnDeathMatchTeamRemovePlayerDelegate
---@field OnDeathMatchTeamScoreChangeDelegate FOnDeathMatchTeamScoreChangeDelegate
---@field OnDeathMatchPlayerScoreDatasChangeDelegate FOnDeathMatchPlayerScoreDatasChangeDelegate
---@field OnDeathMatchGlobalNotifyDelegate FOnDeathMatchGlobalNotifyDelegate
---@field OnDeathMatchGlobalAudioDelegate FOnDeathMatchGlobalAudioDelegate
---@field OnDeathMatchGameEndDelegate FOnDeathMatchGameEndDelegate
---@field OnDeathMatchTeamScoreChangeReplayDelegate FOnDeathMatchTeamScoreChangeReplayDelegate
---@field DeathMatchWWISEManagerComponent_Class UDeathMatchWWISEManagerComponent
---@field bHaveVehicle boolean
---@field bIsAlreadyFirstKill boolean
---@field PlayKillFrameCount number
local ABRGameStateTeam_DeathMatch = {}

---@param PlayerStateData FDeathMatchPlayerStateData
function ABRGameStateTeam_DeathMatch:UpdatePlayerStateData(PlayerStateData) end

---@param PlayerBattleData FTDMPlayerBattleData
function ABRGameStateTeam_DeathMatch:DSUpdatePlayerBattleData(PlayerBattleData) end

---@param TeamBattleData FTDMTeamBattleData
function ABRGameStateTeam_DeathMatch:DSUpdateTeamBattleData(TeamBattleData) end

---@param Killer AController
---@param Victim AController
---@param DamageEvent FDamageEvent
function ABRGameStateTeam_DeathMatch:OnKilled(Killer, Victim, DamageEvent) end

---@param KillerKey number
---@param VictimKey number
---@param AssisterKeys ULuaArrayHelper<number>
---@param DamageEvent FDamageEvent
function ABRGameStateTeam_DeathMatch:PlayerKill(KillerKey, VictimKey, AssisterKeys, DamageEvent) end

---@param KillerKey number
---@param VictimKey number
function ABRGameStateTeam_DeathMatch:PlayerKillEnd(KillerKey, VictimKey) end

---@param PlayerKey number
function ABRGameStateTeam_DeathMatch:LuaOnRemovePlayerState(PlayerKey) end

---@param PlayerStateData FDeathMatchPlayerStateData
function ABRGameStateTeam_DeathMatch:LuaOnAddPlayerState(PlayerStateData) end

---@param InPlayerKey number
---@param OutTeamRank number
---@param OutPlayerRank number
---@return boolean
function ABRGameStateTeam_DeathMatch:GetDeathMatchTeamScoreRank(InPlayerKey, OutTeamRank, OutPlayerRank) end

---@param OutData ULuaArrayHelper<FDeathMatchDamageFlowRecordData>
---@return boolean
function ABRGameStateTeam_DeathMatch:GetLastDeadPlayerDamageFlowRecord(OutData) end

---@return FDeathMatchPlayerStateData
function ABRGameStateTeam_DeathMatch:GetCurrentClientDeathMatchPlayerStateData() end

---@return number
function ABRGameStateTeam_DeathMatch:GetPlayerNumber() end

---@return number
function ABRGameStateTeam_DeathMatch:GetRealPlayerNumber() end

---@return boolean
function ABRGameStateTeam_DeathMatch:IsRecordingReplay() end

---@param ExtraChar ASTExtraCharacter
function ABRGameStateTeam_DeathMatch:RegisterPostProcessMgr(ExtraChar) end

---@param calcScore number
---@param orignalScore number
---@param KillerKey number
---@return number
function ABRGameStateTeam_DeathMatch:AfterCalcKillScore(calcScore, orignalScore, KillerKey) end

function ABRGameStateTeam_DeathMatch:Server_BroadcastDeathMatchGameStartFightNotify() end

---@param WinTeamID number
---@param GameEndType EDeathMatchGameEndType
function ABRGameStateTeam_DeathMatch:MulticastRPC_BroadcastDeathMatchGameEndNotify(WinTeamID, GameEndType) end

---@param PlayerState ABRPlayerStateTeam_DeathMatch
---@param OutPlayerStateData FDeathMatchPlayerStateData
function ABRGameStateTeam_DeathMatch:CreatePlayerStateData(PlayerState, OutPlayerStateData) end

---@param TeamScoreRpcDatas ULuaArrayHelper<FDeathMatchCheckKilledTeamScoreData>
---@param KillerRpcData FDeathMatchCheckKilledKillerData
---@param VictimerRpcData FDeathMatchCheckKilledVictimData
function ABRGameStateTeam_DeathMatch:Multicast_CheckKilledPlayerNotify(TeamScoreRpcDatas, KillerRpcData, VictimerRpcData) end

---@param TeamScoreRpcDatas ULuaArrayHelper<FDeathMatchCheckKilledTeamScoreData>
---@param KillerStateData FDeathMatchPlayerStateData
---@param VictimerStateData FDeathMatchPlayerStateData
function ABRGameStateTeam_DeathMatch:Replay_RPC_CheckKilledPlayerNotify(TeamScoreRpcDatas, KillerStateData, VictimerStateData) end

---@param TeamScoreDatas ULuaArrayHelper<FDeathMatchTeamScoreData>
---@param KillerStateData FDeathMatchPlayerStateData
---@param VictimerStateData FDeathMatchPlayerStateData
function ABRGameStateTeam_DeathMatch:CheckKilledPlayerNotify(TeamScoreDatas, KillerStateData, VictimerStateData) end

---@param PlayerState ABRPlayerStateTeam_DeathMatch
function ABRGameStateTeam_DeathMatch:CheckMedalNotify(PlayerState) end

function ABRGameStateTeam_DeathMatch:CheckRank() end

function ABRGameStateTeam_DeathMatch:CheckTeamRank() end

function ABRGameStateTeam_DeathMatch:CheckTeamPlayersRank() end

function ABRGameStateTeam_DeathMatch:CheckMatchResult() end

---@param DeathMatchTeamScoreDatasRef ULuaArrayHelper<FDeathMatchTeamScoreData>
function ABRGameStateTeam_DeathMatch:SortTeam(DeathMatchTeamScoreDatasRef) end

---@param PlayerStateDatasRef ULuaArrayHelper<FDeathMatchPlayerStateData>
function ABRGameStateTeam_DeathMatch:SortTeamPlayers(PlayerStateDatasRef) end

function ABRGameStateTeam_DeathMatch:OnRep_RefreshReplayScore() end

function ABRGameStateTeam_DeathMatch:CheckIsTeamMaxScoreChanged() end

---@return boolean
function ABRGameStateTeam_DeathMatch:ShouldCheckIsTeamMaxScoreChanged() end

function ABRGameStateTeam_DeathMatch:OnRep_ReplayRedTeamMaxScore() end

function ABRGameStateTeam_DeathMatch:OnRep_ReplayBlueTeamMaxScore() end

function ABRGameStateTeam_DeathMatch:OnRep_ReplayMaxRedPlayerUID() end

function ABRGameStateTeam_DeathMatch:OnRep_ReplayMaxBluePlayerUID() end

function ABRGameStateTeam_DeathMatch:OnRep_ReplayDeathMatchTeamScoreDatas() end

function ABRGameStateTeam_DeathMatch:OnPlayerStateChanged() end

function ABRGameStateTeam_DeathMatch:OnRep_TDMTeamBattleDatas() end

function ABRGameStateTeam_DeathMatch:OnRep_TDMPlayerBattleDatas() end

function ABRGameStateTeam_DeathMatch:OnRep_RepIsAlreadyFirstKill() end

---@return boolean
function ABRGameStateTeam_DeathMatch:DeathMatchNeedToTrackKiller() end

function ABRGameStateTeam_DeathMatch:OnPostProcessManagerIsReady() end
