---@meta

---@class FTeamGeneralCampInfo
---@field TeamID number
---@field CampID number
FTeamGeneralCampInfo = {}


---@class FRunTimeGeneralCampConfig
---@field TeamIDToGeneralCampID ULuaArrayHelper<FTeamGeneralCampInfo>
---@field CampConfigs ULuaArrayHelper<FCampConfigInfo>
---@field CampRelationConfigs ULuaArrayHelper<FCampReleation>
---@field DefaultCampRelation ECampRelation
FRunTimeGeneralCampConfig = {}


---@class FUGCRunTimeGeneralCampConfig
---@field UGCPlayerSpawnPointSelectionMethod EUGCPlayerSpawnPointSelectionMethod
---@field UGCPlayerRespawnPointSelectionMethod EUGCPlayerRespawnPointSelectionMethod
---@field DesignateRespawnLocation FVector
---@field DesignatedSpawnLocation FVector
---@field DesignatedPlayerStartID number
---@field bIsRandomPlayerStartIDWithMultiChoise boolean
---@field bIsPlayerDirectlyDie boolean
---@field CampPlayerStartInfos ULuaMapHelper<number, FUGCCampPlayerStartInfo>
---@field DeadDropType EUGCDeadDropType
---@field bShowBackpackButton boolean
---@field ItemQualityInfos ULuaArrayHelper<FUGCItemQualityInfo>
FUGCRunTimeGeneralCampConfig = {}


---@class AUGCGameStateBase: ASTExtraGameStateBase, ICustomTickTaskActorInterface
---@field UGCPlayerNum number
---@field UGCPlayerNumWithAI number
---@field UGCProgramName string
---@field UGCMountId string
---@field SubUGCKey number
---@field UGCUIModulePrefab string
---@field bItemDBPreloading boolean
---@field bAlivePlayerNumEnabled boolean
---@field bEarlierWinTipsEnabled boolean
---@field BackpackBtnVisible boolean
---@field MotionSyncDatas ULuaArrayHelper<FUGCMobileMotionSyncData>
---@field MotionSyncDatas_Net ULuaArrayHelper<FUGCMobileMotionSyncData_Net>
---@field MotionAutoStartTime number
---@field UGCRunTimeGeneralCampConfig FUGCRunTimeGeneralCampConfig
---@field RunTimeGeneralCampConfig FRunTimeGeneralCampConfig
---@field VehicleHitHandleMap ULuaMapHelper<AActor, UUGCVehicleDamageToAliveProcess>
---@field OverridePickupWrapperClass AUGCPickUpWrapperActor
---@field CacheUGCVehicleInterface IUGCVehicleInterface
local AUGCGameStateBase = {}

function AUGCGameStateBase:OnRep_UGCPlayerNum() end

function AUGCGameStateBase:OnRep_UGCPlayerNumWithAI() end

function AUGCGameStateBase:OnRep_UGCProgramName() end

function AUGCGameStateBase:OnRep_UGCMountId() end

function AUGCGameStateBase:OnRep_SubUGCKey() end

function AUGCGameStateBase:OnRep_UGCUIModulePrefab() end

---@param PlayerKey number
---@param MsgTitle string
---@param MsgContent string
function AUGCGameStateBase:ClientOnSystemNotify(PlayerKey, MsgTitle, MsgContent) end

function AUGCGameStateBase:OnRep_BackpackBtnVisible() end

---@param CampName string
---@return number
function AUGCGameStateBase:GetGeneralCampIDByCampName(CampName) end

---@param InCampName string
---@return number
function AUGCGameStateBase:AddNewGeneralCamp(InCampName) end

---@param CampRelation ECampRelation
function AUGCGameStateBase:SetDefaultGeneralCampRelation(CampRelation) end

---@param InCampA_ID number
---@param InCampB_ID number
---@param CampRelation ECampRelation
function AUGCGameStateBase:SetGeneralCampRelation(InCampA_ID, InCampB_ID, CampRelation) end

---@param TeamID number
---@param CampID number
---@return boolean
function AUGCGameStateBase:SetTeamCampID(TeamID, CampID) end

---@param GameMode AGameModeBase
---@param Player APlayerController
function AUGCGameStateBase:OnTeammateLogin(GameMode, Player) end

function AUGCGameStateBase:InitUGCGeneralCampConfig() end

---@param SwitchConfig FUGCDamageNumberSwitchConfig
function AUGCGameStateBase:SetDamageNumberConfig(SwitchConfig) end

function AUGCGameStateBase:ResetUGCGeneralCampConfig() end
