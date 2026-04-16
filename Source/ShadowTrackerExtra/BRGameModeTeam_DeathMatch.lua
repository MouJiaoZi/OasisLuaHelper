---@meta

---@class ABRGameModeTeam_DeathMatch: ABattleRoyaleGameModeTeam
---@field bSentStopJoin boolean
---@field DeathMatchSubModeType EDeathMatchSubModeType
---@field RespawnPointSelectConfig FDeathMatchPlayerStartSelectConfig
---@field bUseEditorPlayerStarts boolean
---@field DeathMatchStopJoinConfig FDeathMatchStopJoinConfig
---@field bNoDropItem boolean
---@field bIsEnablePlayerWeaponConfig boolean
---@field DeathMatchAIWeaponConfigClassList ULuaArrayHelper<URespawnItemConfig>
---@field DeathMatchWinScore number
---@field Score_Kill number
---@field ContinuouKillNum number
---@field SuperGodKillNum number
---@field GameComingEndNotify_RemainKillNum number
---@field GameComingEndNotify_RemainTime number
---@field GameComingEndNotify_HalfTime number
---@field bUseTopPlayerScoreAsTeamScore boolean
---@field DeathMatchAIWeaponConfigList ULuaArrayHelper<URespawnItemConfig>
---@field bBroadcastExit boolean
---@field BornDeathMatchEditorPSDataMap ULuaMapHelper<number, FBornDeathMatchEditorPSData>
---@field bIsUseTacticsBronPoint boolean
---@field bAllowAIRestartPlayer boolean
local ABRGameModeTeam_DeathMatch = {}

---生化团竞合入, feishen, 20200828
---@param NewPlayer APlayerController
function ABRGameModeTeam_DeathMatch:PostLogin(NewPlayer) end

---生化团竞合入, feishen, 20200828
function ABRGameModeTeam_DeathMatch:OnGameEnterFight() end

---@param PlayerKey number
---@param bAI boolean
function ABRGameModeTeam_DeathMatch:OnPlayerRespawned(PlayerKey, bAI) end

---@param InPlayerController ASTExtraPlayerController
---@return boolean
function ABRGameModeTeam_DeathMatch:ShouldSwitchToMainWeapon(InPlayerController) end

function ABRGameModeTeam_DeathMatch:OnPostSettingParams() end

---@param ChooseStartIndex number
---@param PlayerStartsPool ULuaArrayHelper<ASTExtraPlayerStart>
---@return number
function ABRGameModeTeam_DeathMatch:CustomModifyPlayerStartIndex(ChooseStartIndex, PlayerStartsPool) end

---@param PlayerStateA ASTExtraPlayerState
---@param PlayerStateB ASTExtraPlayerState
---@return boolean
function ABRGameModeTeam_DeathMatch:JudgeHasSameTeam(PlayerStateA, PlayerStateB) end

---@param PlayerState ASTExtraPlayerState
---@return number
function ABRGameModeTeam_DeathMatch:GetBornID(PlayerState) end

---@param PlayerController ASTExtraPlayerController
function ABRGameModeTeam_DeathMatch:DeathMatchGeneratePlayerItems(PlayerController) end

---@param AIController AFakePlayerAIController
function ABRGameModeTeam_DeathMatch:DeathMatchGenerateAIItems(AIController) end

function ABRGameModeTeam_DeathMatch:OnBRGameEnterFinish() end
