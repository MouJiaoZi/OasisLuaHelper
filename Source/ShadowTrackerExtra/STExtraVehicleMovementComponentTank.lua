---@meta

---@class FCachedTankWheelData
---@field WheelsInAir boolean
---@field WheelSuspensionOffset number
---@field LatSlip number
---@field LongSlip number
FCachedTankWheelData = {}


---@class USTExtraVehicleMovementComponentTank: USTExtraBaseTankMovementComponent
---@field TrackDestroiedInputScale number
---@field EngineDestroiedInputScale number
---@field mapCachedWheelData ULuaMapHelper<number, FCachedTankWheelData>
---@field CacheWheelsNotInAir number
---@field ExtraOptBoneNames ULuaArrayHelper<string>
---@field ServerInitForceSleepPhysicsDelay number @Server初始物理休眠延迟 都改默认延迟6s， 安全保障地图加载完毕
---@field ClientInitForceSleepPhysicsDelay number @Client初始物理休眠延迟
local USTExtraVehicleMovementComponentTank = {}

---@return number
function USTExtraVehicleMovementComponentTank:GetLeftTrackSpeed() end

---@return number
function USTExtraVehicleMovementComponentTank:GetRightTrackSpeed() end

function USTExtraVehicleMovementComponentTank:RecreateWheel() end

---@param Start FVector
---@param End FVector
function USTExtraVehicleMovementComponentTank:ShowDebugDirection(Start, End) end

---@param Center FVector
---@param Radius number
function USTExtraVehicleMovementComponentTank:ShowDebugTurnAroundCircle(Center, Radius) end

---@return number
function USTExtraVehicleMovementComponentTank:GetNumWheelsNotInAir() end

---@param Height number
function USTExtraVehicleMovementComponentTank:MoveWheelShapeHeight(Height) end

---@param WheelIndex number
---@param Offset FVector
function USTExtraVehicleMovementComponentTank:SetWheelCentreOffset(WheelIndex, Offset) end

---@param WheelIndex number
---@param Angle number
function USTExtraVehicleMovementComponentTank:SetWheelToeAngle(WheelIndex, Angle) end

---@param InScale number
function USTExtraVehicleMovementComponentTank:SetLeftTrackInputScale(InScale) end

---@param InScale number
function USTExtraVehicleMovementComponentTank:SetRightTrackInputScale(InScale) end

---@param InScale number
function USTExtraVehicleMovementComponentTank:SetEngineInputScale(InScale) end

---@param Index number
---@return number
function USTExtraVehicleMovementComponentTank:GetWheelLatSlipByIndex(Index) end

---@param Index number
---@return number
function USTExtraVehicleMovementComponentTank:GetWheelLongSlipByIndex(Index) end

---@param index number
---@return boolean
function USTExtraVehicleMovementComponentTank:CheckWheelInAir(index) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraVehicleMovementComponentTank:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraVehicleMovementComponentTank:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function USTExtraVehicleMovementComponentTank:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---强制设定所有轮子,旋转绝对值小于RotationSpeed，设置为RotationSpeed
---@param RotationSpeed number
function USTExtraVehicleMovementComponentTank:ForceWheelsRotate(RotationSpeed) end

---<在被炸飞后停止轮子的旋转
function USTExtraVehicleMovementComponentTank:OnExpoldeStopWheel() end

function USTExtraVehicleMovementComponentTank:OnRep_VehicleSlipConfigWrapper() end
