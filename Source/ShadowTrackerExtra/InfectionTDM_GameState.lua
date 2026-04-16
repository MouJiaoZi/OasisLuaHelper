---@meta

---生化团竞, feishen, 20200714
---@class AInfectionTDM_GameState: ABRGameStateTeam_DeathMatch
---@field InfectionTDMStateChanged FInfectionTDMStateDelegate
---@field BGMState string
---@field LuaTickFreq number
---@field MaxRage number
---@field RageAddTimeByHumanKill number
---@field RageAddTimeByHumanCount number
---@field RageAddRateByHumanCount number
---@field RageAddTimeBySuperKill number
---@field RageAddTimeBySuperCount number
---@field RageAddRateBySuperCount number
---@field RageAddTimeByInfecCount number
---@field RageAddRateByDamage number
---@field HumanCampTypeMap ULuaArrayHelper<EInfectionPlayerInfectType>
---@field InfectedCampTypeMap ULuaArrayHelper<EInfectionPlayerInfectType>
local AInfectionTDM_GameState = {}

---@param Killer AController
---@param Victim AController
---@param DamageEvent FDamageEvent
function AInfectionTDM_GameState:OnKilled_Implementation(Killer, Victim, DamageEvent) end

---@param KillerType number
---@param VictimerType number
---@param DamageType number
---@param DamagePosition number
---@param ScoreReasonID number
---@param HeadShotID number
---@return number
function AInfectionTDM_GameState:LuaCalPlayerKillScore(KillerType, VictimerType, DamageType, DamagePosition, ScoreReasonID, HeadShotID) end

---@param KillerPlayerKey number
---@param VictimerPlayerKey number
---@param KillerType number
---@param VictimerType number
---@param DamageType number
---@param DamagePosition number
---@param ScoreReasonID number
---@param HeadShotID number
function AInfectionTDM_GameState:LuaSendPlayerKillScore(KillerPlayerKey, VictimerPlayerKey, KillerType, VictimerType, DamageType, DamagePosition, ScoreReasonID, HeadShotID) end

---@param AssistType number
---@param ScoreReasonID number
---@return number
function AInfectionTDM_GameState:LuaCalAssistKillScore(AssistType, ScoreReasonID) end

---@param AssisterKey number
---@param AssistType number
---@param ScoreReasonID number
---@return number
function AInfectionTDM_GameState:LuaSendAssistKillScore(AssisterKey, AssistType, ScoreReasonID) end

---@param Assister AController
function AInfectionTDM_GameState:LuaTlogAddAssitTimes(Assister) end

---@param PlayerController AController
---@param AddScore number
---@param bIsAssist boolean
function AInfectionTDM_GameState:LuaAddPlayerRoundScore(PlayerController, AddScore, bIsAssist) end

---@param StateName string
function AInfectionTDM_GameState:BroadcastBGMState(StateName) end

---@param OutList ULuaArrayHelper<ASTExtraPlayerState>
---@param CampType EInfectionCampType
function AInfectionTDM_GameState:GetCampPlayerStateList(OutList, CampType) end

---@param CampType EInfectionCampType
---@return number
function AInfectionTDM_GameState:GetCampPlayerCount(CampType) end

---@param MyPlayerKey number
---@param MyCampType EInfectionCampType
---@return number
function AInfectionTDM_GameState:FindOneSameCampPlayer(MyPlayerKey, MyCampType) end

function AInfectionTDM_GameState:LuaTick() end

---@param Killer AController
---@param Victim AController
---@param DamageEvent FDamageEvent
function AInfectionTDM_GameState:LuaOnKilled(Killer, Victim, DamageEvent) end

---@param PlayerStateData FDeathMatchPlayerStateData
function AInfectionTDM_GameState:LuaAddPlayerStateData(PlayerStateData) end

---@param PlayerBattleData FTDMPlayerBattleData
function AInfectionTDM_GameState:LuaUpdatePlayerBattleData(PlayerBattleData) end

---@param PlayerKey number
function AInfectionTDM_GameState:LuaRemovePlayerStateData(PlayerKey) end
