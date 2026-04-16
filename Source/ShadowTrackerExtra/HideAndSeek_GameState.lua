---@meta

---生化团竞, feishen, 20200714
---@class AHideAndSeek_GameState: ABRGameStateTeam_DeathMatch
---@field HideAndSeekStateChanged FHideAndSeekStateDelegate
---@field BGMState string
---@field LuaTickFreq number
local AHideAndSeek_GameState = {}

---@param Killer AController
---@param Victim AController
---@param DamageEvent FDamageEvent
function AHideAndSeek_GameState:OnKilled_Implementation(Killer, Victim, DamageEvent) end

---@param KillerType number
---@param VictimerType number
---@param DamageType number
---@param DamagePosition number
---@param ScoreReasonID number
---@param HeadShotID number
---@return number
function AHideAndSeek_GameState:LuaCalPlayerKillScore(KillerType, VictimerType, DamageType, DamagePosition, ScoreReasonID, HeadShotID) end

---@param AssistType number
---@param ScoreReasonID number
---@return number
function AHideAndSeek_GameState:LuaCalAssistKillScore(AssistType, ScoreReasonID) end

---@param Assister AController
function AHideAndSeek_GameState:LuaTlogAddAssitTimes(Assister) end

---@param PlayerController AController
---@param ReasonID number
---@param bUpdateBattleData boolean
function AHideAndSeek_GameState:LuaAddPlayerRoundScoreByReason(PlayerController, ReasonID, bUpdateBattleData) end

---@param StateName string
function AHideAndSeek_GameState:BroadcastBGMState(StateName) end

---@param OutList ULuaArrayHelper<ASTExtraPlayerState>
---@param CampType EHideAndSeekCampType
function AHideAndSeek_GameState:GetCampPlayerStateList(OutList, CampType) end

---@param MyPlayerKey number
---@param MyCampType EHideAndSeekCampType
---@return number
function AHideAndSeek_GameState:FindOneSameCampPlayer(MyPlayerKey, MyCampType) end

function AHideAndSeek_GameState:OnRep_BGMState() end

function AHideAndSeek_GameState:LuaTick() end

---@param PlayerStateData FDeathMatchPlayerStateData
function AHideAndSeek_GameState:LuaAddPlayerStateData(PlayerStateData) end

---@param PlayerBattleData FTDMPlayerBattleData
function AHideAndSeek_GameState:LuaUpdatePlayerBattleData(PlayerBattleData) end

---@param PlayerKey number
function AHideAndSeek_GameState:LuaRemovePlayerStateData(PlayerKey) end
