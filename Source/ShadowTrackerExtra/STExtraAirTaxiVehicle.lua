---@meta

---@class FCG014TaxiStationInfo
---@field bLocation FVector
---@field InstanceID number
FCG014TaxiStationInfo = {}


---@class ASTExtraAirTaxiVehicle: ASTExtraXmasSledVehicle
---@field RotateTotalTime number
---@field ParkingTime number
---@field ParkingPassTime number
---@field StopPassTime number
---@field RisingSourcePos FVector
---@field RisingEndPos FVector
---@field FallingSourcePos FVector
---@field FallingEndPos FVector
---@field StartTurnIdx number
---@field EndTurnIdx number
---@field bIsStartTurn boolean
---@field StartTurnCircleCenter FVector
---@field EndTurnCircleCenter FVector
---@field WaitDestIdx number
---@field MinVelocity number
---@field bIsSimulateEnterNextSegment boolean
---@field bIsUseClientSimulateTurn boolean
---@field ReplayFixLocationDist number
---@field HasInitGameState boolean
---@field DispatchMarkInfo ULuaArrayHelper<FMarkSyncData>
---@field ClickMarkDispatchInfo ULuaArrayHelper<FMarkSyncData>
---@field EndMarkDispatchInfo ULuaArrayHelper<FMarkSyncData>
---@field CanShowEndPointInfo boolean
---@field StaticMarkInstanceID number
local ASTExtraAirTaxiVehicle = {}

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraAirTaxiVehicle:OnServerEnterVehicle(Character, SeatType, IsSucc) end

---@param DeltaTime number
function ASTExtraAirTaxiVehicle:AirTaxiTurnPost(DeltaTime) end

function ASTExtraAirTaxiVehicle:OnAirTaxiStop() end

---@param DestIdx number
function ASTExtraAirTaxiVehicle:OnReachDestIdx(DestIdx) end

function ASTExtraAirTaxiVehicle:OnEnterWaitingState() end

function ASTExtraAirTaxiVehicle:AirTaxiStartLand() end

---@param VehicleEnterRange number
function ASTExtraAirTaxiVehicle:ResetEnterVehicleRange(VehicleEnterRange) end

---@param OverlappingPlayers ULuaArrayHelper<ASTExtraBaseCharacter>
function ASTExtraAirTaxiVehicle:GetTaxiTopPlayers(OverlappingPlayers) end

---@param MarkPath ULuaArrayHelper<FCG014TaxiStationInfo>
function ASTExtraAirTaxiVehicle:CreatePathMark(MarkPath) end

---@param StationMarkList ULuaArrayHelper<FCG014TaxiStationInfo>
function ASTExtraAirTaxiVehicle:CreateClickMark(StationMarkList) end

---@param EndPointInfo ULuaArrayHelper<FCG014TaxiStationInfo>
function ASTExtraAirTaxiVehicle:CreateEndMark(EndPointInfo) end

function ASTExtraAirTaxiVehicle:ClearOtherMarkInfo() end

function ASTExtraAirTaxiVehicle:ClearAllMarkInfo() end

---@return boolean
function ASTExtraAirTaxiVehicle:CanShowMark() end

---@param PC ASTExtraPlayerController
function ASTExtraAirTaxiVehicle:ClearVehicleIcon(PC) end
