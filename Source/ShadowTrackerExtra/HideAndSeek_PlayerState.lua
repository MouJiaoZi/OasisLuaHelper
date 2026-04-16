---@meta

---躲猫猫
---@class AHideAndSeek_PlayerState: ABRPlayerStateTeam_DeathMatch
---@field CampType EHideAndSeekCampType
---@field CampTeamMatePlayerStateList ULuaArrayHelper<AHideAndSeek_PlayerState>
---@field IsAIPlayerState boolean
---@field PureSpectator boolean
---@field AbilityID number
---@field HitProbability number
---@field RespawnReason EHideAndSeekRespawnReason
---@field RespawnTrans FTransform
---@field RespawnPoseState ESTEPoseState
---@field UpdateSurviveTimeInterval number
---@field CurrentUpgradeLevel number
local AHideAndSeek_PlayerState = {}

function AHideAndSeek_PlayerState:StopUpdateSurviveTime() end

---@param PlayerState AUAEPlayerState
---@return boolean
function AHideAndSeek_PlayerState:IsTeamMate(PlayerState) end

function AHideAndSeek_PlayerState:OnRep_CampType() end

function AHideAndSeek_PlayerState:UpdateCampTeamMatePlayerStateList() end

---@param OutList ULuaArrayHelper<AHideAndSeek_PlayerState>
---@param ExcludeMyself boolean
function AHideAndSeek_PlayerState:GetCampTeamMatePlayerStateList(OutList, ExcludeMyself) end

---@param InPlayerKey number
---@return boolean
function AHideAndSeek_PlayerState:IsCampTeammate(InPlayerKey) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamagePostion number
function AHideAndSeek_PlayerState:LuaTakeDamageFromCharacter(Damage, DamageEvent, EventInstigator, DamageCauser, DamagePostion) end

function AHideAndSeek_PlayerState:LuaTeamMatePlayerStateList() end

function AHideAndSeek_PlayerState:LuaUpdateSurviveTime() end

---@param DeathMatchBattleData FDeathMatchBattleData
function AHideAndSeek_PlayerState:OnLuaSyncDeathMatchBattleData(DeathMatchBattleData) end

---@param ValueName string
---@param Value number
function AHideAndSeek_PlayerState:LuaAddRoundData(ValueName, Value) end

---@param ValueName string
---@param Value number
function AHideAndSeek_PlayerState:LuaSetRoundData(ValueName, Value) end

---@param ValueName string
---@param Value number
function AHideAndSeek_PlayerState:LuaGetRoundData(ValueName, Value) end

function AHideAndSeek_PlayerState:BPShowFoundedEffect() end

---@param PlayerState ASTExtraPlayerState
---@param Achievement number
function AHideAndSeek_PlayerState:OnCompleteAchievementTaskAction(PlayerState, Achievement) end
