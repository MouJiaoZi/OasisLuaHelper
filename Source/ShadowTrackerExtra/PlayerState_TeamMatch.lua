---@meta

---躲猫猫
---@class APlayerState_TeamMatch: ASTExtraPlayerState
---@field PlayerWeaponsConfigList ULuaArrayHelper<FPlayerWeaponsConfig>
---@field DeathMatchGenerateWeaponConfigList ULuaArrayHelper<URespawnItemConfig>
---@field SelectedWeaponConfigIndex number
---@field CampType ETeamMatchCampType
---@field CampTeamMatePlayerStateList ULuaArrayHelper<APlayerState_TeamMatch>
local APlayerState_TeamMatch = {}

---@param PlayerState AUAEPlayerState
---@return boolean
function APlayerState_TeamMatch:IsTeamMate(PlayerState) end

function APlayerState_TeamMatch:SaveCurrentUsingWeapon() end

function APlayerState_TeamMatch:OnRep_PlayerWeaponsConfigList() end

function APlayerState_TeamMatch:OnRep_SelectedWeaponConfigIndex() end

function APlayerState_TeamMatch:OnRep_CampType() end

function APlayerState_TeamMatch:UpdateCampTeamMatePlayerStateList() end

---@param OutList ULuaArrayHelper<APlayerState_TeamMatch>
---@param ExcludeMyself boolean
function APlayerState_TeamMatch:GetCampTeamMatePlayerStateList(OutList, ExcludeMyself) end

---@param InPlayerKey number
---@return boolean
function APlayerState_TeamMatch:IsCampTeammate(InPlayerKey) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamagePostion number
function APlayerState_TeamMatch:LuaTakeDamageFromCharacter(Damage, DamageEvent, EventInstigator, DamageCauser, DamagePostion) end

function APlayerState_TeamMatch:LuaTeamMatePlayerStateList() end

---@param PlayerState ASTExtraPlayerState
---@param Achievement number
function APlayerState_TeamMatch:OnCompleteAchievementTaskAction(PlayerState, Achievement) end
