---@meta

---@class FOverturnWrapper
---@field TargetRollAngle number
---@field ShouldOverturn boolean
---@field OverturnDirectionSign number
FOverturnWrapper = {}


---@class FOnIsOverturningChange : ULuaMulticastDelegate
FOnIsOverturningChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsOverturning: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnIsOverturningChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsOverturning boolean
function FOnIsOverturningChange:Broadcast(IsOverturning) end


---@class FOnRepOverturnWrapper : ULuaMulticastDelegate
FOnRepOverturnWrapper = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PreviousOverturnWrapper: FOverturnWrapper) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepOverturnWrapper:Add(Callback, Obj) end

---触发 Lua 广播
---@param PreviousOverturnWrapper FOverturnWrapper
function FOnRepOverturnWrapper:Broadcast(PreviousOverturnWrapper) end


---希克斯飞行器的移动组件
---@class USTExtraSixWingMovementComp: USTExtraAircraftMovementComponent
---@field OverTurnRollTorqueRate number
---@field OverTurnRollTorqueDampingPower number
---@field OverTurnRollForceRate number
---@field OverTurnRollTargetThreshold number
---@field OverTurnBeyondLimitThreshold number
---@field ShouldClearAngularSpeedWhenFinishOverturn boolean
---@field NoRealitySimulationAfterFinishOverturnTime number
---@field NoFuelTipsDisplayTime number
---@field ShouldChangeOverturnedCameraOffset boolean
---@field OverturnedCameraOffsetLerpSpeed number
---@field OverturnedCameraOffset FVector
---@field UpdateCameraOffsetInterval number
---@field FCameraOffsetDataName string
---@field BackwardMovePitchAngle number
---@field NoForwardInputPitchAngle number
---@field ForwardMovePitchAngle number
---@field AllowDownwardMinHeightOffset number
---@field HeightThresholdToSlowDown number
---@field SlowDownInput number
---@field NoFuelDownInput number
---@field AllowMaxReqPerFrame number
---@field OverturnWrapper FOverturnWrapper
---@field FinishOverturningTime number
---@field CameraData FCameraOffsetData
---@field IsOverturning boolean
---@field LocalTargetAngle number
---@field CurrentFrameReqCounter_ReqOverTurn number
---@field CurrentFrameCounter number
---@field UpdateCameraOffsetTimer number
---@field NoFuelTipsDisplayTimer number
---@field OnIsOverturningChange FOnIsOverturningChange
---@field OnRepOverturnWrapper FOnRepOverturnWrapper
local USTExtraSixWingMovementComp = {}

---@param PreviousOverturnWrapper FOverturnWrapper
function USTExtraSixWingMovementComp:OnRep_OverturnWrapper(PreviousOverturnWrapper) end

---@param InShouldOverturn boolean
function USTExtraSixWingMovementComp:ReqOverturning(InShouldOverturn) end

---@return number
function USTExtraSixWingMovementComp:GetTargetAngle() end

---@param InTargetAngle number
function USTExtraSixWingMovementComp:SetTargetAngle(InTargetAngle) end

---@param DeltaTime number
function USTExtraSixWingMovementComp:UpdatePassengerCameraOffset(DeltaTime) end

---@return number
function USTExtraSixWingMovementComp:OverturningDirection() end

---@param Current number
---@return number
function USTExtraSixWingMovementComp:GetOppositeTargetAngle(Current) end

---@param Enable boolean
---@param Character ASTExtraPlayerCharacter
function USTExtraSixWingMovementComp:EnableOverturnedCameraOffset(Enable, Character) end

---@return boolean
function USTExtraSixWingMovementComp:CanControl() end

---@return boolean
function USTExtraSixWingMovementComp:GetShouldServerAuthorize() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraSixWingMovementComp:OnSeatAttachedFunction(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraSixWingMovementComp:OnSeatDetachedFunction(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function USTExtraSixWingMovementComp:OnSeatChangedFunction(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param InIsOverturning boolean
function USTExtraSixWingMovementComp:OnIsOverturningChangeFunction(InIsOverturning) end
