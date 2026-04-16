---@meta

---@class UEMPZoneControlComponent: UTimerRegistComponent
---@field MapOriginal FVector
---@field MapRadius number
---@field FlightHeight number
---@field SeaLevelHeight number
---@field TryFindSpotMaxTimes number
---@field TryFindSpotInRange_RingtawMaxTimes number
---@field ZoneGenerateType EEMPZoneGenerateType
---@field MinSpawnNum number
---@field MaxSpawnNum number
---@field WaveCount number
---@field EMPZoneCfg FEMPZoneCfg
---@field EMPZoneEXCfg ULuaArrayHelper<FEMPZoneEXCfg>
---@field EMPZoneClass AEMPZoneActor
---@field AllEMPActor ULuaArrayHelper<AEMPZoneActor>
---@field EMPZoneDisForCheck number
---@field BisMustInMap boolean
---@field WarningTipsID number
---@field WarningTipsExStr string
---@field ZoneActiveTipsID number
---@field ZoneActiveTipsExStr string
---@field ZoneDestroyTipsID number
---@field ZoneDestroyTipsExStr string
---@field TipsBisIgnoreSpecator boolean
local UEMPZoneControlComponent = {}

---@param Index number
function UEMPZoneControlComponent:CreateEMPZoneEntry(Index) end

---@param Index number
function UEMPZoneControlComponent:DoEMPZoneWarning(Index) end

---@param Index number
function UEMPZoneControlComponent:DoEMPZoneActive(Index) end

---@param Index number
function UEMPZoneControlComponent:ShowEMPZoneWarningTips(Index) end

---@param Index number
function UEMPZoneControlComponent:ShowEMPActiveTips(Index) end

---@param Index number
function UEMPZoneControlComponent:ShowEMPDeActiveTips(Index) end

---@param MapCenterDummy FVector
---@param Index number
function UEMPZoneControlComponent:MakeEMPZoneArea(MapCenterDummy, Index) end

---@param Index number
function UEMPZoneControlComponent:ActiveEMPZoneArea(Index) end

---@param SpawnTrans FTransform
---@param Index number
function UEMPZoneControlComponent:SpawnEMPZoneArea(SpawnTrans, Index) end

---@param Actor AActor
---@param EndPlayReason EEndPlayReason
function UEMPZoneControlComponent:OnEMPZoneActorEndPlay(Actor, EndPlayReason) end

---@param Loc FVector
---@param ClosestDis number
---@return boolean
function UEMPZoneControlComponent:CheckWithAllEMPZoneDis_2D(Loc, ClosestDis) end

function UEMPZoneControlComponent:UpdateGameStateEMPData() end

---@return boolean
function UEMPZoneControlComponent:TryToSpawnEMPZone() end

---@param Loc FVector
---@return boolean
function UEMPZoneControlComponent:ForceSpawnEMPZone(Loc) end
