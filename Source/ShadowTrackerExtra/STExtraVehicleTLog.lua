---@meta

---@class ESOperateVehicle
---@field EEnterVehicle number
---@field EExitVehicle number
ESOperateVehicle = {}


---@class FBFVehicleInfo
---@field ftime number
---@field VehicleID number
---@field OperateVehicleState ESOperateVehicle
---@field VehicleSeatType ESTExtraVehicleSeatType
FBFVehicleInfo = {}


---@class FBFVehicleInfoArray
---@field VehicleInfoArray ULuaArrayHelper<FBFVehicleInfo>
FBFVehicleInfoArray = {}


---@class FEnterVehicleInfo
---@field fFirstEnterVehicletime number
---@field fFirstLeaveVehicletime number
---@field FirstVehicleType ESTExtraVehicleType
---@field nEnterVehicleTimes number
---@field bTlogReportSecondLeaveVehicle boolean
FEnterVehicleInfo = {}


---@class FVehicleAverageSpeed
---@field fTime number
---@field fSpeedSample number
---@field nSpeedSampleTimes number
FVehicleAverageSpeed = {}


---@class FVehicleHitInfoData
---@field fTime number
---@field fHitTimes number
---@field fHitVehicleDamage number
---@field fHitCharacterDamage number
FVehicleHitInfoData = {}


---@class USTExtraVehicleTLog: UObject
local USTExtraVehicleTLog = {}

---@param vehicle ASTExtraVehicleBase
---@param Instigator AController
function USTExtraVehicleTLog:OnVehicleWheelDestroy(vehicle, Instigator) end

---@param InVehicle ASTExtraVehicleBase
---@param finalDamage number
---@param Instigator AController
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@return boolean
function USTExtraVehicleTLog:OnVehicleTakeDamage(InVehicle, finalDamage, Instigator, DamageEvent, DamageCauser) end

---@param InVehicle ASTExtraVehicleBase
---@param DeltaTime number
function USTExtraVehicleTLog:OnVehicleTick(InVehicle, DeltaTime) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleTLog:OnVehicleSpawn(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleTLog:OnVehicleTurnOvers(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param _player_control ASTExtraPlayerController
---@param VehicleSeat ESTExtraVehicleSeatType
function USTExtraVehicleTLog:OnVehicleEnter(InVehicle, _player_control, VehicleSeat) end

---@param InVehicle ASTExtraVehicleBase
---@param _player_control ASTExtraPlayerController
---@param seatIndex number
function USTExtraVehicleTLog:OnVehicleExit(InVehicle, _player_control, seatIndex) end

---@param InVehicle ASTExtraVehicleBase
---@param value number
---@param causer AController
function USTExtraVehicleTLog:OnVehicleConsumeFuel(InVehicle, value, causer) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleTLog:OnVehicleChangeAvatar(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param fVehicleDamage number
---@param fCharacterDamage number
---@param _player_control ASTExtraPlayerController
---@param HitLocation FVector
function USTExtraVehicleTLog:OnVehicleHit(InVehicle, fVehicleDamage, fCharacterDamage, _player_control, HitLocation) end

---@param InVehicle ASTExtraVehicleBase
---@param _player_control ASTExtraPlayerController
function USTExtraVehicleTLog:OnVehicleAddFuelUseGasCan(InVehicle, _player_control) end

---@param itemID number
---@param _player_control ASTExtraPlayerController
function USTExtraVehicleTLog:OnUseItem(itemID, _player_control) end

---@param InVehicle ASTExtraVehicleBase
---@param DriftNIO number
function USTExtraVehicleTLog:OnVehicleDriftAddNIOValue(InVehicle, DriftNIO) end

---@param InVehicle ASTExtraVehicleBase
---@param AccTime number
function USTExtraVehicleTLog:OnVehicleDriftAccTimeAndTimes(InVehicle, AccTime) end

---@param InVehicle ASTExtraVehicleBase
---@param _player_control ASTExtraPlayerController
---@param operateVehicle ESOperateVehicle
---@param VehicleSeat ESTExtraVehicleSeatType
function USTExtraVehicleTLog:BFVehicleEnterOrExit(InVehicle, _player_control, operateVehicle, VehicleSeat) end

function USTExtraVehicleTLog:BFTLogVehicleEnterOrExit() end

---@param InVehicle ASTExtraVehicleBase
---@param _player_control ASTExtraPlayerController
---@param fRepairHp number
---@param eRepairType ESRePairVehicle
function USTExtraVehicleTLog:BFRepairVehicle(InVehicle, _player_control, fRepairHp, eRepairType) end

---@param World UWorld
---@param PlayerKey number
function USTExtraVehicleTLog:OnTlogPreEnd(World, PlayerKey) end

---@param InVehicle ASTExtraVehicleBase
---@param time number
function USTExtraVehicleTLog:HorseSwimTime(InVehicle, time) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleTLog:BackPackVehicleFull(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleTLog:BackPackVehicleUse(InVehicle) end

---@param DelegateName string
---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleTLog:ProcessEnterExitVehicleDelegateTLog(DelegateName, InVehicle) end

---@param Vehicle ASTExtraVehicleBase
---@param SkillName string
function USTExtraVehicleTLog:VehicleUseAvatarSkill(Vehicle, SkillName) end

---@param InVehicle ASTExtraVehicleBase
---@param SkillName string
function USTExtraVehicleTLog:StartVehicleAvatarSkillState(InVehicle, SkillName) end

---@param InVehicle ASTExtraVehicleBase
---@param SkillName string
function USTExtraVehicleTLog:StopVehicleAvatarSkillState(InVehicle, SkillName) end
