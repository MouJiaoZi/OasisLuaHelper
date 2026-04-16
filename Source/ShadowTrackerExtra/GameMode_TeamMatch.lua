---@meta

---@class AGameMode_TeamMatch: ABattleRoyaleGameModeTeam
---@field bNoDropItem boolean
---@field bIsEnablePlayerWeaponConfig boolean
---@field DeathMatchAIWeaponConfigClassList ULuaArrayHelper<URespawnItemConfig>
---@field DeathMatchAIWeaponConfigList ULuaArrayHelper<URespawnItemConfig>
local AGameMode_TeamMatch = {}

---@param PlayerKey number
---@param bAI boolean
function AGameMode_TeamMatch:OnPlayerRespawned(PlayerKey, bAI) end

function AGameMode_TeamMatch:OnTeamMatchGameEnterFinish() end

---@param PlayerController ASTExtraPlayerController
function AGameMode_TeamMatch:TeamMatchGeneratePlayerItems(PlayerController) end

---@param AIController AFakePlayerAIController
function AGameMode_TeamMatch:TeamMatchGenerateAIItems(AIController) end

---@param PlayerKey number
---@param PlayerType string
---@param bDestroyCharacter boolean
---@return boolean
function AGameMode_TeamMatch:IsDestroyChaAfterPlayerExit(PlayerKey, PlayerType, bDestroyCharacter) end

---@param PlayerKey number
---@param PlayerType string
---@param bDestroyPlayerController boolean
---@return boolean
function AGameMode_TeamMatch:IsDestroyPCAfterPlayerExit(PlayerKey, PlayerType, bDestroyPlayerController) end
