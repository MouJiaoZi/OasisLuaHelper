---@meta

---@class EWonderfulCutCaptureType
---@field WonderfulCutCaptureType_None number
---@field WonderfulCutCaptureType_ChickenDinner number
---@field WonderfulCutCaptureType_Circle number
---@field WonderfulCutCaptureType_Vehicle number
---@field WonderfulCutCaptureType_Grenade number
---@field WonderfulCutCaptureType_Melee number
---@field WonderfulCutCaptureType_ShootDamage number
EWonderfulCutCaptureType = {}


---@class EWonderfulCutShootDamageType
---@field WonderfulCutHurtType_None number
---@field WonderfulCutHurtType_Kill number
---@field WonderfulCutHurtType_LastBreath number
---@field WonderfulCutHurtType_Hurt number
EWonderfulCutShootDamageType = {}


---@class EWonderfulCutOutputType
---@field WonderfulCutOutputType_None number
---@field WonderfulCutOutputType_ChickenDinner number
---@field WonderfulCutOutputType_ShootKill number
---@field WonderfulCutOutputType_ShootLastBreath number
---@field WonderfulCutOutputType_ShootDamage number
---@field WonderfulCutOutputType_MeleeKill number
---@field WonderfulCutOutputType_MeleeLastBreath number
---@field WonderfulCutOutputType_GrenadeKill number
---@field WonderfulCutOutputType_GrenadeLastBreath number
---@field WonderfulCutOutputType_VehicleKill number
---@field WonderfulCutOutputType_VehicleLastBreath number
EWonderfulCutOutputType = {}


---@class FWonderfulCut_OneShootDamage
---@field bVictimAI boolean
---@field CaptureType EWonderfulCutCaptureType
---@field ShootDamageType EWonderfulCutShootDamageType
---@field DamageTimeSecs number
---@field ShootDistance number
---@field CauserName string
FWonderfulCut_OneShootDamage = {}


---@class FWonderfulCutShootDamageData
---@field DamagePlayerID number
---@field ShootDamageList ULuaArrayHelper<FWonderfulCut_OneShootDamage>
FWonderfulCutShootDamageData = {}


---@class FWonderfulCutShootDamageSortData
---@field DamageIntervalSecs number
---@field DamageTimeSecs number
---@field bVictimAI boolean
---@field CaptureType EWonderfulCutCaptureType
---@field ShootDamageType EWonderfulCutShootDamageType
---@field ShootDistance number
---@field CauserName string
FWonderfulCutShootDamageSortData = {}


---@class FWonderfulCutOutputData
---@field BeginTimeSecs number
---@field EndTimeSecs number
---@field WonderfulCutType EWonderfulCutOutputType
---@field ShootDistance number
---@field CauserName string
FWonderfulCutOutputData = {}


---@class FWonderfulCutContinuousKillOutputData
---@field BeginTimeSecs number
---@field EndTimeSecs number
---@field KillNum number
---@field FarthestKillDistance number
FWonderfulCutContinuousKillOutputData = {}


---@class UWonderfulRecordingCut: UObject
---@field WonderfulCutOutputDataList ULuaArrayHelper<FWonderfulCutOutputData>
---@field WonderfulCutContinuousKillOutputDataList ULuaArrayHelper<FWonderfulCutContinuousKillOutputData>
---@field bIsChickenDinner boolean
---@field ChickenDinnerTimeSecs number
---@field bIsShowSmallCircle boolean
---@field ShowSmallCircleTimeSecs number
---@field ShootDamageDataList ULuaArrayHelper<FWonderfulCutShootDamageData>
local UWonderfulRecordingCut = {}

function UWonderfulRecordingCut:StartRecord() end

---@param bRankFirst boolean
function UWonderfulRecordingCut:StopRecord(bRankFirst) end

---@return boolean
function UWonderfulRecordingCut:IsInRecording() end

---@param CaptureType EWonderfulCutCaptureType
---@param DamagePlayerID number
---@param bAI boolean
---@param ShootDamageType EWonderfulCutShootDamageType
---@param ShootDistance number
---@param CauserName string
function UWonderfulRecordingCut:CaptureRecordCut(CaptureType, DamagePlayerID, bAI, ShootDamageType, ShootDistance, CauserName) end

---@param LargeCircleDataList ULuaArrayHelper<FWonderfulCutShootDamageSortData>
---@param SmallCircleDataList ULuaArrayHelper<FWonderfulCutShootDamageSortData>
function UWonderfulRecordingCut:SortShootDamageData(LargeCircleDataList, SmallCircleDataList) end

---@param SortDataList ULuaArrayHelper<FWonderfulCutShootDamageSortData>
function UWonderfulRecordingCut:RemoveOutputDataInContinuousKillRange(SortDataList) end

function UWonderfulRecordingCut:BuildOutputData() end

function UWonderfulRecordingCut:BuildContinuousKillOutputData() end
