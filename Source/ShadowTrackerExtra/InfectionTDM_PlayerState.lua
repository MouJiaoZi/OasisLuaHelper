---@meta

---生化团竞, feishen, 20200714
---@class AInfectionTDM_PlayerState: ABRPlayerStateTeam_DeathMatch
---@field CurPlayerType EInfectionPlayerInfectType
---@field LastPlayerType EInfectionPlayerInfectType
---@field CampType EInfectionCampType
---@field IsAIPlayerState boolean
---@field RespawnReason EInfectionRespawnReason
---@field RespawnTrans FTransform
---@field RespawnPoseState ESTEPoseState
---@field UpdateSurviveTimeInterval number
---@field CurrentUpgradeLevel number
---@field InfectPawnIDList ULuaArrayHelper<number>
---@field bTest boolean
local AInfectionTDM_PlayerState = {}

function AInfectionTDM_PlayerState:StopUpdateSurviveTime() end

---@param PlayerState AUAEPlayerState
---@return boolean
function AInfectionTDM_PlayerState:IsTeamMate(PlayerState) end

function AInfectionTDM_PlayerState:OnRep_CurPlayerType() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamagePostion number
function AInfectionTDM_PlayerState:LuaTakeDamageFromCharacter(Damage, DamageEvent, EventInstigator, DamageCauser, DamagePostion) end

function AInfectionTDM_PlayerState:LuaTeamMatePlayerStateList() end

function AInfectionTDM_PlayerState:LuaUpdateSurviveTime() end

---@param DeathMatchBattleData FDeathMatchBattleData
function AInfectionTDM_PlayerState:OnLuaSyncDeathMatchBattleData(DeathMatchBattleData) end

---@param InPlayerUID number
---@param InLevel number
---@param bRealTime boolean
function AInfectionTDM_PlayerState:OnPlayerLevelUp(InPlayerUID, InLevel, bRealTime) end

function AInfectionTDM_PlayerState:OnRep_InfectPawnIDList() end

---@param InfectionType EInfectionPlayerInfectType
---@return boolean
function AInfectionTDM_PlayerState:IsNormalInfected(InfectionType) end

---@param InfectionType EInfectionPlayerInfectType
---@return boolean
function AInfectionTDM_PlayerState:IsAdvancedInfected(InfectionType) end

---@param InfectionType EInfectionPlayerInfectType
---@return boolean
function AInfectionTDM_PlayerState:IsSuperman(InfectionType) end

function AInfectionTDM_PlayerState:GetAvailableTypes() end

---@param PlayerState ASTExtraPlayerState
---@param Achievement number
function AInfectionTDM_PlayerState:OnCompleteAchievementTaskAction(PlayerState, Achievement) end
