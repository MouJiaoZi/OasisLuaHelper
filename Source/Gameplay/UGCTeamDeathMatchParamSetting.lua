---@meta

---@class EModeType
---@field TeamMatch number
---@field TeamMatch_Arms number
---@field TeamMatch_Occupy number
EModeType = {}


---@class EParamType
---@field GameModeParam number
---@field CharacterType number
---@field GameStateParam number
EParamType = {}


---@class FUGCTeamDeathBattleArea
---@field BattleAreaID number
---@field bEnable boolean
FUGCTeamDeathBattleArea = {}


---@class FUGCTeamDeathSubItem
---@field ItemID number
---@field Count number
FUGCTeamDeathSubItem = {}


---@class FUGCTeamDeathItem
---@field ItemID number
---@field Count number
---@field SubItemList ULuaArrayHelper<FUGCTeamDeathSubItem>
FUGCTeamDeathItem = {}


---@class FUGCTeamDeathItemList
---@field ItemList ULuaArrayHelper<FUGCTeamDeathItem>
FUGCTeamDeathItemList = {}


---@class FUGCTeamDeathItemListTable
---@field ItemTable ULuaArrayHelper<FUGCTeamDeathItemList>
FUGCTeamDeathItemListTable = {}


---@class FUGCTeamDeathItemList_Arms
---@field ScoreSpan number
---@field ItemList ULuaArrayHelper<FUGCTeamDeathItem>
FUGCTeamDeathItemList_Arms = {}


---@class FUGCTeamDeathItemList_TeamArms
---@field TeamItemList ULuaArrayHelper<FUGCTeamDeathItemList_Arms>
FUGCTeamDeathItemList_TeamArms = {}


---@class UUGCTeamDeathMatchParamSetting: UObject
---@field PlayerNumPerTeam ULuaArrayHelper<number>
---@field bChooseEquipment boolean
---@field TeamItemConfig ULuaArrayHelper<FUGCTeamDeathItemList>
---@field TeamChoosableEquipmentConfig ULuaArrayHelper<FUGCTeamDeathItemList>
---@field ArmsTeamItemConfig ULuaArrayHelper<FUGCTeamDeathItemList_TeamArms>
---@field BattleAreaList ULuaArrayHelper<FUGCTeamDeathBattleArea>
---@field SpawnAreaList ULuaArrayHelper<number>
---@field TeamHealthConfig ULuaArrayHelper<number>
---@field TeamSpeedScaleConfig ULuaArrayHelper<number>
---@field TeamGravityConfig ULuaArrayHelper<number>
---@field HealthRecoverBuffNameConfig ULuaArrayHelper<string>
---@field bCustomTeamSelection boolean
---@field ReadyStateTime number
---@field FightStateTime number
---@field TargetScore number
---@field RespawnWaitingTime number
---@field RespawnInvincibleTime number
---@field MaxPlayerNumPerTeam number
---@field MinPlayerNumPerTeam number
---@field MaxHealth number
---@field MinHealth number
---@field MaxSpeedScale number
---@field MinSpeedScale number
---@field MaxGravityScale number
---@field MinGravityScale number
---@field MaxReadyTime number
---@field MinReadyTime number
---@field MaxFightTime number
---@field MinFightTime number
---@field MaxTargetScore number
---@field MinTargetScore number
---@field MaxRespawnWaitingTime number
---@field MinRespawnWaitingTime number
---@field MaxRespawnInvincibleTime number
---@field MinRespawnInvincibleTime number
local UUGCTeamDeathMatchParamSetting = {}

---@param Object UObject
---@param InParamType EParamType
function UUGCTeamDeathMatchParamSetting:SetParam(Object, InParamType) end

---@param GameMode UObject
function UUGCTeamDeathMatchParamSetting:SetGameModeParam(GameMode) end

---@param GameState UObject
function UUGCTeamDeathMatchParamSetting:SetGameStateParam(GameState) end

---@param Character UObject
function UUGCTeamDeathMatchParamSetting:SetCharacterParam(Character) end
