---@meta

---impandachen
---@class SledFlyingStage
---@field Parking number
---@field Departure number
---@field Climbing number
---@field Rotating number
---@field Cruising number
---@field Landing number
---@field Stop number
---@field Waiting number
SledFlyingStage = {}


---@class FOnSledStageChanged : ULuaMulticastDelegate
FOnSledStageChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SledCurStage: SledFlyingStage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSledStageChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param SledCurStage SledFlyingStage
function FOnSledStageChanged:Broadcast(SledCurStage) end


---@class ASTExtraXmasSledVehicle: ASTExtraVehicleBase
---@field SledVelocity number
---@field MaxVelocity number
---@field BoostVelocity number
---@field Acceleration number
---@field PassingVelocity number
---@field FlightRoute ULuaArrayHelper<FVector>
---@field RotateRadius number
---@field ClimbLandDistance number
---@field ClimbLandHeight number
---@field StationInOutDistance number
---@field StationParkingTime number
---@field CurDestIdx number
---@field CurFlyingStage SledFlyingStage
---@field LastFlyingStage SledFlyingStage
---@field OnSledStageChanged FOnSledStageChanged
---@field BoostFxTime number
---@field BoostCameraOffset FCameraOffsetData
---@field Sfx_SledRunLoop FSTExtraVehicleSfxLoop
---@field OpenParachuteSpeed number
---@field ParachuteMinHeight number
---@field ParachuteMaxHeight number
---@field OverlapOffset FVector
---@field SledPassengers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field ChangeWeatherHeight number
---@field RotatingBox ASTExtraSledRotatingBox
---@field MaxGiftNum number
---@field MinOrbitRadius number
---@field MaxOrbitRadius number
---@field SpawnDistance number
---@field MaxSpawnHeightOffset number
---@field MinSpawnHeightOffset number
---@field SpawnInterval number
---@field MaxOrbitTime number
---@field DebugGiftOrbit boolean
---@field EnterWithFriendEventID number
---@field SledUniqueID number
---@field SpawnedByStationIdx number
---@field SledSpawnRelativeLocation FVector
---@field SledPassRelativeLocation FVector
---@field DestroySledTime number
---@field bCanInteract boolean
---@field CurTargetStation FEndStationInfo
---@field TimeElapsedSinceSpawned number
---@field SledHalfSize FVector
---@field ValidSledsHitDistance number
---@field WaitingToDestroyDelay number
---@field bNeedDrawFlightRoute boolean
local ASTExtraXmasSledVehicle = {}

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraXmasSledVehicle:OnServerExitVehicle(InCharacter, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraXmasSledVehicle:OnServerEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraXmasSledVehicle:ClientEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraXmasSledVehicle:ClientExitVehicle(Character, SeatType, IsSucc) end

function ASTExtraXmasSledVehicle:OnRep_CurFlyingStageChanged() end

---@param InFlightRoute ULuaArrayHelper<FVector>
function ASTExtraXmasSledVehicle:S2C_ClientDrawDebugFlightRoute(InFlightRoute) end

---@param InBoostValue number
function ASTExtraXmasSledVehicle:BoostSledMaxVelocity(InBoostValue) end

function ASTExtraXmasSledVehicle:BoostSledReset() end

function ASTExtraXmasSledVehicle:OnRep_ActivateSledBoostEffect() end

function ASTExtraXmasSledVehicle:DeactivateSledBoostEffect() end

---@param Passenger ASTExtraBaseCharacter
function ASTExtraXmasSledVehicle:TryOpenParachute(Passenger) end

---@param Passenger ASTExtraBaseCharacter
---@param SwitchOn boolean
function ASTExtraXmasSledVehicle:TrySwitchWeather(Passenger, SwitchOn) end

function ASTExtraXmasSledVehicle:DestroyOrbittingBox() end

---@param SledStationPath ULuaArrayHelper<number>
---@return boolean
function ASTExtraXmasSledVehicle:CalcFlightRouteByBusStationIdx(SledStationPath) end

function ASTExtraXmasSledVehicle:OnRep_SledUniqueID() end

---@param Param ULuaArrayHelper<FUAEBlackboardParameter>
---@param InController APlayerController
function ASTExtraXmasSledVehicle:OnServerReceiveSledDeparture(Param, InController) end

function ASTExtraXmasSledVehicle:CallServerSetSledDeparture() end

function ASTExtraXmasSledVehicle:DelayDestroyOnSledStop() end

function ASTExtraXmasSledVehicle:OnSledHitOtherActor() end

function ASTExtraXmasSledVehicle:CheckIfSeatsIsEmpty() end

function ASTExtraXmasSledVehicle:OnRep_CurTargetStation() end

function ASTExtraXmasSledVehicle:UpdateSledSeatsViewYawLimit() end
