---@meta

---@class FOnDMServerMedalNotifyDelegate : ULuaMulticastDelegate
FOnDMServerMedalNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MedalIDList: ULuaArrayHelper<number>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDMServerMedalNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param MedalIDList ULuaArrayHelper<number>
function FOnDMServerMedalNotifyDelegate:Broadcast(MedalIDList) end


---@class FOnDMServerPersonalDieNotifyDelegate : ULuaMulticastDelegate
FOnDMServerPersonalDieNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillerKey: number, KillerCauserRecords: ULuaArrayHelper<FDeathMatchDamageCauserRecordData>, AssisterKeys: ULuaArrayHelper<number>, VictimDamageRecords: ULuaArrayHelper<FDeathMatchDamageRecordData>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDMServerPersonalDieNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillerKey number
---@param KillerCauserRecords ULuaArrayHelper<FDeathMatchDamageCauserRecordData>
---@param AssisterKeys ULuaArrayHelper<number>
---@param VictimDamageRecords ULuaArrayHelper<FDeathMatchDamageRecordData>
function FOnDMServerPersonalDieNotifyDelegate:Broadcast(KillerKey, KillerCauserRecords, AssisterKeys, VictimDamageRecords) end


---@class FOnDeathMatchPlayerKillNotifyDelegate : ULuaMulticastDelegate
FOnDeathMatchPlayerKillNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, KillerData: FDeathMatchPlayerStateData, VictimerData: FDeathMatchPlayerStateData, IsHeadShoot: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchPlayerKillNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param KillerData FDeathMatchPlayerStateData
---@param VictimerData FDeathMatchPlayerStateData
---@param IsHeadShoot boolean
function FOnDeathMatchPlayerKillNotifyDelegate:Broadcast(KillerData, VictimerData, IsHeadShoot) end


---@class FOnDeathMatchPersonalDieNotifyDelegate : ULuaMulticastDelegate
FOnDeathMatchPersonalDieNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerDieData: FDeathMatchPlayerDieData) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchPersonalDieNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerDieData FDeathMatchPlayerDieData
function FOnDeathMatchPersonalDieNotifyDelegate:Broadcast(PlayerDieData) end


---@class FOnDeathMatchMedalNotifyDelegate : ULuaMulticastDelegate
FOnDeathMatchMedalNotifyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MedalIDList: ULuaArrayHelper<number>) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathMatchMedalNotifyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param MedalIDList ULuaArrayHelper<number>
function FOnDeathMatchMedalNotifyDelegate:Broadcast(MedalIDList) end


---@class ABRPlayerStateTeam_DeathMatch: ASTExtraPlayerState
---@field DeathMatchScore number
---@field ScoreSource ULuaMapHelper<number, number>
---@field Rank number
---@field TeamRankingListIndex number
---@field Deaths number
---@field ContinuousKills number
---@field MaxContinuousKills number
---@field PlayerWeaponsConfigList ULuaArrayHelper<FPlayerWeaponsConfig>
---@field DeathMatchGenerateWeaponConfigList ULuaArrayHelper<URespawnItemConfig>
---@field SelectedWeaponConfigIndex number
---@field MobileKills number @击杀移动端设备击杀数
---@field NonMobileKills number @击杀非移动端设备击杀数
---@field MobileDeaths number @被移动端设备击杀的死亡数
---@field NonMobileDeaths number @被非移动端设备击杀的死亡数
---@field OnDMServerPersonalDieNotifyDelegate FOnDMServerPersonalDieNotifyDelegate
---@field OnDMServerMedalNotifyDelegate FOnDMServerMedalNotifyDelegate
---@field DeathMatchPlayerKillNotifyDelegate FOnDeathMatchPlayerKillNotifyDelegate
---@field DeathMatchPersonalDieNotifyDelegate FOnDeathMatchPersonalDieNotifyDelegate
---@field DeathMatchMedalNotifyDelegate FOnDeathMatchMedalNotifyDelegate
---@field DemoPlayFightingData FDeathMatchPlayerFightingData
local ABRPlayerStateTeam_DeathMatch = {}

---@param MedalID number
function ABRPlayerStateTeam_DeathMatch:AddMedal(MedalID) end

---@param MedalID number
function ABRPlayerStateTeam_DeathMatch:AddMedalScore(MedalID) end

---@param VictimerKey number
function ABRPlayerStateTeam_DeathMatch:AddKillRecord(VictimerKey) end

function ABRPlayerStateTeam_DeathMatch:UpdateTeamBattleData() end

function ABRPlayerStateTeam_DeathMatch:UpdatePlayerBattleData() end

function ABRPlayerStateTeam_DeathMatch:Server_SyncDeathMatchBattleData() end

---@param KiilerKey number
function ABRPlayerStateTeam_DeathMatch:Server_SendDeathMatchPersonalDieNotify(KiilerKey) end

---@param MedalIDList ULuaArrayHelper<number>
function ABRPlayerStateTeam_DeathMatch:Server_SendDeathMatchMedalNotify(MedalIDList) end

---@param MedalIDList ULuaArrayHelper<number>
function ABRPlayerStateTeam_DeathMatch:BroadcastDeathMatchMedalInfo(MedalIDList) end

---@param PlayerStateData FDeathMatchPlayerStateData
function ABRPlayerStateTeam_DeathMatch:DMServer_OnAddPlayerStateData(PlayerStateData) end

---@param InPlayerKey number
function ABRPlayerStateTeam_DeathMatch:DMServer_OnRemovePlayerStateData(InPlayerKey) end

---@param KiilerKey number
---@param VictimKey number
---@param AssisterKeys ULuaArrayHelper<number>
---@param DamageEvent FDamageEvent
function ABRPlayerStateTeam_DeathMatch:DMServer_OnPlayerKill(KiilerKey, VictimKey, AssisterKeys, DamageEvent) end

---@param KiilerKey number
---@param VictimKey number
function ABRPlayerStateTeam_DeathMatch:DMServer_OnPlayerKillEnd(KiilerKey, VictimKey) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalNotifyReason EDeathMatchGlobalNotifyReason
function ABRPlayerStateTeam_DeathMatch:DMServer_OnGlobalNotify(KillerKey, VictimKey, GlobalNotifyReason) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalAudioReason EDeathMatchGlobalAudioType
function ABRPlayerStateTeam_DeathMatch:DMServer_OnGlobalAudio(KillerKey, VictimKey, GlobalAudioReason) end

function ABRPlayerStateTeam_DeathMatch:ServerRPC_RequestSyncDeathMatchBattleData() end

---@param Index number
function ABRPlayerStateTeam_DeathMatch:ServerRPC_ChangeDeathMatchWeaponConfigIndex(Index) end

---@param DeathMatchBattleData FDeathMatchBattleData
function ABRPlayerStateTeam_DeathMatch:ClientRPC_SyncDeathMatchBattleData(DeathMatchBattleData) end

---@param InPlayerKey number
---@param InTeamID number
---@param IsAIPlayer boolean
---@param InfectType number
---@param CurLiveState number
---@param InGameLevel number
---@param DeathMatchPlayerInfo FDeathMatchPlayerInfo
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastAddPlayerStateData(InPlayerKey, InTeamID, IsAIPlayer, InfectType, CurLiveState, InGameLevel, DeathMatchPlayerInfo) end

---@param InPlayerKey number
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastRemovePlayerStateData(InPlayerKey) end

---@param KiilerKey number
---@param VictimKey number
---@param AssisterKeys ULuaArrayHelper<number>
---@param DamageEvent FDamageEvent
---@param KillFrameCount number
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastPlayerKill(KiilerKey, VictimKey, AssisterKeys, DamageEvent, KillFrameCount) end

---@param KiilerKey number
---@param VictimKey number
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastPlayerKillEnd(KiilerKey, VictimKey) end

---@param KillerKey number
---@param KillerCauserRecords ULuaArrayHelper<FDeathMatchDamageCauserRecordData>
---@param AssisterKeys ULuaArrayHelper<number>
---@param VictimDamageRecords ULuaArrayHelper<FDeathMatchDamageRecordData>
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastDeathMatchPersonalDieNotify(KillerKey, KillerCauserRecords, AssisterKeys, VictimDamageRecords) end

---@param MedalIDList ULuaArrayHelper<number>
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastDeathMatchMedalNotify(MedalIDList) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalNotifyReason EDeathMatchGlobalNotifyReason
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastDeathMatchGlobalNotify(KillerKey, VictimKey, GlobalNotifyReason) end

---@param KillerKey number
---@param VictimKey number
---@param GlobalAudioReason EDeathMatchGlobalAudioType
function ABRPlayerStateTeam_DeathMatch:ClientRPC_BroadcastDeathMatchGlobalAudio(KillerKey, VictimKey, GlobalAudioReason) end

---@param ObserverController ASTExtraPlayerController
---@param IsEnter boolean
function ABRPlayerStateTeam_DeathMatch:OnMyObserversChangeDelegate(ObserverController, IsEnter) end

function ABRPlayerStateTeam_DeathMatch:OnRep_PlayerWeaponsConfigList() end

function ABRPlayerStateTeam_DeathMatch:OnRep_SelectedWeaponConfigIndex() end

function ABRPlayerStateTeam_DeathMatch:OnRep_DemoPlayFightingData() end

---@param AddScore number
---@param Type number
function ABRPlayerStateTeam_DeathMatch:AddScoreSourceData(AddScore, Type) end
