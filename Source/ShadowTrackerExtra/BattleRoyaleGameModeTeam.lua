---@meta

---@class FItemBindUnion
---@field ItemGroup ULuaArrayHelper<number>
---@field BindTargetID number
FItemBindUnion = {}


---@class ABattleRoyaleGameModeTeam: ABattleRoyaleGameMode
---@field bSupportHeroPawn boolean
---@field bEnableRebornWithLastWeapon boolean
---@field bSupportChangeTeam boolean
---@field IsReviveMode boolean
---@field AvatarEffect1 FItemBindUnion
---@field AvatarEffect2 FItemBindUnion
---@field AvatarEffect3 number
---@field AvatarEffect4 number
---@field AvatarEffect5 FItemBindUnion
---@field CurrentAvatarList ULuaArrayHelper<number>
---@field CheckNoHumanExistInterfaces ULuaArrayHelper<UObject>
---@field DelayedSettlement boolean
local ABattleRoyaleGameModeTeam = {}

---@param TeamID number
function ABattleRoyaleGameModeTeam:OnTeamDataChanged(TeamID) end

---@param TeamID number
function ABattleRoyaleGameModeTeam:ScriptOnTeamDataChanged(TeamID) end

---生化团竞合入, feishen, 20200828
function ABattleRoyaleGameModeTeam:HandleGameEnd() end

---@param TeamId number
function ABattleRoyaleGameModeTeam:GetTeamates(TeamId) end

---@param PlayerKey number
---@param TeamID number
---@param ShouldCheckGodSon boolean
---@return boolean
function ABattleRoyaleGameModeTeam:IsAllTeamDead(PlayerKey, TeamID, ShouldCheckGodSon) end

---@param PlayerKey number
---@param TeamID number
---@param ShouldCheckGodSon boolean
---@return boolean
function ABattleRoyaleGameModeTeam:HasAliveTeamMate(PlayerKey, TeamID, ShouldCheckGodSon) end

---@param PlayerState ASTExtraPlayerState
---@return boolean
function ABattleRoyaleGameModeTeam:IsPlayerAlive(PlayerState) end

---@param PlayerState ASTExtraPlayerState
---@return boolean
function ABattleRoyaleGameModeTeam:IsPlayerCanSelfRevival(PlayerState) end

---@param TeamID number
---@return boolean
function ABattleRoyaleGameModeTeam:ShouldSendTeamBattleResult(TeamID) end

---@param TeamID number
---@return string
function ABattleRoyaleGameModeTeam:GetTeamBattleResultReason(TeamID) end

---@param TeamID number
---@return boolean
function ABattleRoyaleGameModeTeam:CheckIsTeamOutGame(TeamID) end

function ABattleRoyaleGameModeTeam:CheckMatchGoalAchieved() end

---@return number
function ABattleRoyaleGameModeTeam:GetRealTeamNum() end

---@return boolean
function ABattleRoyaleGameModeTeam:CheckChickenDinnerExisted() end

---@param PickupPC ASTExtraPlayerController
function ABattleRoyaleGameModeTeam:OnAvatarPickupFinished(PickupPC) end

---@return number
function ABattleRoyaleGameModeTeam:GetChickenDinnerNum() end

---@param TeamID number
function ABattleRoyaleGameModeTeam:RoomModeCheckBisGoFinishState(TeamID) end

---@param TeamID number
---@param bDestroyPlayerController boolean
---@return boolean
function ABattleRoyaleGameModeTeam:TryClearAITeammate(TeamID, bDestroyPlayerController) end
