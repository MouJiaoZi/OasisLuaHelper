---@meta

---@class FTeamConstructDataCache
FTeamConstructDataCache = {}


---@class FTeamConstructConfig
---@field BuildingID number
---@field MaxTeamBuildCount number
FTeamConstructConfig = {}


---@class USTBuildSystemTeamMgr: UGameModeBaseComponent
---@field TeamConstructConfigOverride ULuaArrayHelper<FTeamConstructConfig>
---@field TeamConstructLimitSet ULuaMapHelper<number, number>
---@field TeamConstructedDataMap ULuaMapHelper<number, FTeamConstructDataCache>
local USTBuildSystemTeamMgr = {}

function USTBuildSystemTeamMgr:InitializeTeamConstructData() end

---@param InPlayer APlayerController
function USTBuildSystemTeamMgr:OnPlayerPostLogin(InPlayer) end

---@param Exiting APlayerController
function USTBuildSystemTeamMgr:OnPlayerRealExit(Exiting) end

---@param PC ASTExtraPlayerController
---@param BuildActor AActor
---@param InBuildingID number
function USTBuildSystemTeamMgr:OnCheckOverConstucting(PC, BuildActor, InBuildingID) end

---@param AIPC AFakePlayerAIController
---@param BuildActor AActor
---@param InBuildingID number
function USTBuildSystemTeamMgr:OnAICheckOverConstucting(AIPC, BuildActor, InBuildingID) end
