---@meta

---球类载具的移动组件
---@class USTExtraBallMovementComponent: UPawnMovementComponent
---@field UseCustomPowerMode boolean
---@field MaxForwardTorque number
---@field MaxBackTorque number
---@field MaxSideTorque number
---@field SlipStiffness number
---@field MaxAcc number
---@field MaxAngularVel number
---@field ReverseTorqueFactor number
---@field ExtraGravity number
---@field MaxForwardAngularVel number
---@field MaxSideAngularVel number
---@field MaxForwardAngularAcceleration number
---@field MaxSideAngularAcceleration number
---@field StopMovementAngularVel number
---@field StopMovementLinearVel number
---@field MaxStaticAngle number
---@field ExtraGravityInPhysicsMode number
---@field ApplyExtraGravityHeightInPhysicsMode number
---@field SteeringSpeed number
---@field SteeringDistThreshold number
---@field SteeringWheelRate number
---@field AngularDamping number
---@field BrakeAngularDamping number
---@field StopAngularVel number
---@field PowerDamping number
---@field FreeDamping number
---@field BrakeDamping number
---@field StopLinearVel number
---@field LowSpeedThresholdTime number
---@field StickyFrictionDamping number
---@field SeatPoseUseBodyRotation boolean
---@field MaxForwardSeatAngle number
---@field MaxForwardSeatAngleVel number
---@field MaxSlideSeatAngle number
---@field MaxSlideSeatAngleVel number
---@field SeatAngleSpeed number
---@field SeatAngleThreshold number
---@field WheelRotationScale number
---@field FindFloorDist number
---@field FindFloorRadius number
---@field BounceThreshold number
---@field ClearBounceThreshold number
---@field FloorHeight number
---@field ServerAuthHeight number
---@field ServerAuthLastTime number
---@field FloorNormalZ number
---@field TargetFloorHeight number
---@field TargetFloorHeightRange number
---@field AdjustUpSpeed number
---@field AdjustDownSpeed number
---@field MaxStaticCosTheta number
---@field FindFloorIntervalInSleeping number
---@field MaxCosTheta number
---@field MaxDownSpeed number
---@field MaxDownVelDirZ number
---@field MaxRaiseHeight number
---@field ObstacleNormalZ number
---@field ObstacleMinSpeed number
---@field ObstacleMinHeight number
---@field ObstacleMaxHeight number
---@field CheckObstacleTwice boolean
---@field ReduceBounceZ boolean
---@field ReduceZFactor number
---@field AddBounceXY boolean
---@field AddXYFactor number
---@field ModifyContactSpeedSquare number
---@field BallRadius number
---@field EnterSleepTime number
---@field PassengerAddTorqueSize number
---@field DebugDraw boolean
---@field ForwardInputRate number
---@field RightInputRate number
---@field CameraRationYaw number
---@field HandBrakeRate number
---@field STForwardInputRate number
---@field STRightInputRate number
---@field STCameraRationYaw number
---@field STHandBrakeRate number
---@field PassengerAccelerateAngularVelocity FVector
---@field bUseCacheStateToSleep boolean
---@field fSleepLinVelSizeSqu number
---@field CurrentRotationYaw number
---@field CurrentRotationYawDirty boolean
---@field CacheBodyCOM FVector
---@field CacheAngularVelSize number
---@field FloorHit FHitResult
---@field FoundFloor boolean
---@field CurrentHeight number
---@field IsEngineOn boolean
---@field LowSpeedTimer number
---@field StickyFrictionOn boolean
---@field LastVel FVector
---@field ServerAuthTimer number
---@field SleepTimer number
---@field IsBodySleeping boolean
---@field IsVehicleStatic boolean
---@field bEnableResolveStuckUseVelocity boolean
---@field fMinMoveDisSquBetweenFrames number
---@field fApplyVelocitySize number
---@field ContinuousStuckInterval number
---@field ContinuousStuckTimeBeforeResoving number
---@field MovablePlatformAdapterTemplate UMovablePlatformVehBaseAdapter
local USTExtraBallMovementComponent = {}

---主控端发送输入给服务端更新输入数据
---@param InForwardInput number
---@param InRightInput number
---@param InCameraRationYaw number
---@param InHandBrakeRate number
function USTExtraBallMovementComponent:ServerUpdateInput(InForwardInput, InRightInput, InCameraRationYaw, InHandBrakeRate) end

---@param NeedCheckDriver boolean
---@param bIgnoreInWater boolean
---@return boolean
function USTExtraBallMovementComponent:HasPower(NeedCheckDriver, bIgnoreInWater) end

---@return boolean
function USTExtraBallMovementComponent:IsShouldDsControl() end

---@return boolean
function USTExtraBallMovementComponent:IsLogBallVehicle() end

---@param NewRealForwardDir FVector
function USTExtraBallMovementComponent:SetRealForwardDir(NewRealForwardDir) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraBallMovementComponent:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function USTExtraBallMovementComponent:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function USTExtraBallMovementComponent:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param DeltaTime number
---@param bIgnoreInput boolean
function USTExtraBallMovementComponent:PureUpdateRotationAndAnim(DeltaTime, bIgnoreInput) end

function USTExtraBallMovementComponent:OnRep_PassengerAccelerateAngularVelocity() end
