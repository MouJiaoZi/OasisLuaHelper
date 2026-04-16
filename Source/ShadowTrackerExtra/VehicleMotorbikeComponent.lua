---@meta

---@class FMotorcycleContactChangeDelegate : ULuaSingleDelegate
FMotorcycleContactChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMotorcycleContactChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FMotorcycleContactChangeDelegate:Execute() end


---@class FOnSnowboardFinishAirStuntRoll : ULuaSingleDelegate
FOnSnowboardFinishAirStuntRoll = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSnowboardFinishAirStuntRoll:Bind(Callback, Obj) end

---执行委托
function FOnSnowboardFinishAirStuntRoll:Execute() end


---@class FOnSnowboardFinishAirStuntPitch : ULuaSingleDelegate
FOnSnowboardFinishAirStuntPitch = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSnowboardFinishAirStuntPitch:Bind(Callback, Obj) end

---执行委托
function FOnSnowboardFinishAirStuntPitch:Execute() end


---@class FOnSnowboardFinishAirStuntYaw : ULuaSingleDelegate
FOnSnowboardFinishAirStuntYaw = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSnowboardFinishAirStuntYaw:Bind(Callback, Obj) end

---执行委托
function FOnSnowboardFinishAirStuntYaw:Execute() end


---@class UVehicleMotorbikeComponent: UVehicleComponent
---@field OnContactChanged FMotorcycleContactChangeDelegate
---@field bHasSidecart boolean
---@field LowStabBoneName string
---@field HighStabBoneName string
---@field SideCartHighStabCOM FVector
---@field MinSuspensionOffsetForContact number
---@field StabStaticVector FVector
---@field StabXVelocityIn FVector2D
---@field StabXVelocityOut FVector2D
---@field StabXPitchIn FVector2D
---@field StabXPitchOut FVector2D
---@field StabZVelocityIn FVector2D
---@field StabZVelocityOut FVector2D
---@field StabZRollIn FVector2D
---@field StabZRollOut FVector2D
---@field StabZPitchIn FVector2D
---@field StabZPitchOut FVector2D
---@field StabTorqueIn FVector2D
---@field StabTorqueOut FVector2D
---@field StabTorqueForceScalar number
---@field StabTorquePitchIn FVector2D
---@field StabTorquePitchOut FVector2D
---@field StablizeAddTorqueThreshold number
---@field StablizeSetCOMThreshold number
---@field bUseNewCOMCal boolean
---@field ScaleTorque number
---@field ScaleCenterOfMass number
---@field CurrentTorque FVector
---@field CurrentCenterOfMass FVector
---@field bEnableAirControl boolean
---@field AirControlFVelMap FVector2D
---@field AirControlBVelMap FVector2D
---@field AirControlFBTorque number
---@field bEnableAirYawControl boolean
---@field AirControlRVelMap FVector2D
---@field AirControlLRTorque number
---@field EnableAirPitchAdjust boolean
---@field EnablePitchNearLandAdjust boolean
---@field NearLandAdjustMaxPitch number
---@field AdjustMaxPitchNeraLand number
---@field AdjustMaxPitch number
---@field AdjustRateF number
---@field AdjustRateB number
---@field AdjustPitchRateScale number
---@field EnableAirRollAdjust boolean
---@field EnableRollNearLandAdjust boolean
---@field NearLandAdjustMaxRoll number
---@field AdjustMaxRollNeraLand number
---@field AdjustMaxRoll number
---@field AdjustRateR number
---@field AdjustRateL number
---@field AdjustRollRateScale number
---@field bResetRotationSafeCheckEnabled boolean
---@field bResetRotationCanRideCheckEnabled boolean
---@field bResetRotationAdjustLoc boolean
---@field bNewStableMode boolean
---@field NewStabilizeMaxAngVel number
---@field NewStabilizeMaxAngVelAngle number
---@field NewStabilizeMinAngle number
---@field NewStabilizeStopLinearVel number
---@field LeanAngleScale number
---@field MainSteerWheelIndex number
---@field NewStabilizeTireLoadTorque number
---@field NewStabilizeTireLoadDesiredYaw number
---@field NewStabilizeTireLoadSmoothFactor number
---@field AirSteerAngVel number
---@field bUseCustomRideCheck boolean
---@field bContact boolean
---@field bLastContact boolean
---@field COMOffsetSteer number
---@field RotSteeringFinal number
---@field bUseConstraintStabilize boolean
---@field LinearStabilizeRollCutoff number
---@field bStabilizeWithoutDriver boolean
---@field bStabilizeOnRemoteClient boolean
---@field bStabilizeOnServer boolean
---@field ConstraintSpringForce number
---@field ConstraintDamperForce number
---@field ForceStabilizeNoDriver boolean
---@field PitchForceAlphaMapIn FVector2D
---@field PitchForceAlphaMapOut FVector2D
---@field bUseCalculatedVelocityAdjustedUpVector boolean
---@field RootBodyName string
---@field FrameShiftBodyRollAlpha number
---@field FrameShiftAdjustedUpVectorSpeedMapIn FVector2D
---@field bStabilizeWithContactNormal boolean
---@field StabilizeWithContactNormalAlpha number
---@field bShouldResetLocation boolean
---@field bUseNewResetLocationLogic boolean
---@field bRecordRotateSpeedDataOnClient boolean
---@field bRecordRotateSpeedDataOnServer boolean
---@field bRecordRotateDataOnClient boolean
---@field bRecordRotateDataOnServer boolean
---@field bCollectAirStunts boolean
---@field AirStunts_YawDegree number
---@field AirStunts_PitchDegree number
---@field AirStunts_RollDegree number
---@field AirStunts_ValidRotateMinValue number
---@field OnServerSnowboardFinishAirStuntRoll FOnSnowboardFinishAirStuntRoll
---@field OnServerSnowboardFinishAirStuntPitch FOnSnowboardFinishAirStuntPitch
---@field OnServerSnowboardFinishAirStuntYaw FOnSnowboardFinishAirStuntYaw
---@field KickstandAngularDamping number
---@field KickstandMaxAngVelocity number
---@field KickstandEnableMaxSpeed number
---@field bKickstandStabilizeEnabled boolean
---@field bKickstandStabilizeActive boolean
---@field bNeedCheckKickstandWhenRegionChanged boolean
---@field StopTickKickstandRoll number
---@field bUseLinearStabilizeInterp boolean
---@field DirectStabilizeSpeedKickstand number
---@field MinVelocityForStabilizeOverride number
---@field MaxRollForStabilizeOverride number
---@field bUseKickstandStabilize boolean
---@field bOpenClientKickstandStabilize boolean
---@field DisableKickstandMaxImpluse number
---@field StablizeDoneToSleepMotorbike boolean
---@field StablizeDoneToSleepVelocityThreshold number
---@field MotorSteerRoll number
---@field bTickMotorbikeSteerRoll boolean
---@field bUseForwardSpeed boolean
---@field COMOffsetSteerFactorMap FVector4
---@field SteerRollInterpSpeed number
---@field InverseVelocityFactorMap FVector4
---@field InverseVelocity_YFactor number
---@field InverseVelocitySteerFactorMap FVector4
---@field SteerRollFactorByVelocityClamp FVector2D
---@field SteerRollAngularFactorByVelocityMap FVector4
---@field SteerRollByAngularScale number
---@field SteerRollFactorByAngularVelocityClamp FVector2D
---@field FinalSteerRollInterpSpeed number
---@field bDriverUseHandGripIKRot boolean
---@field DriverVehicleSteerAngleMax number
---@field PassengerVehicleSteerAngleMax number
---@field DriverSpineBoneName string
---@field DriverSpineOffset FVector
---@field DriverVehGroundPitchAngleMax number
---@field DriverSpineOffsetAddictiveLeftHand FVector
---@field DriverSpineOffsetAddictiveRightHand FVector
---@field DriverSpineSafeArea FBox
local UVehicleMotorbikeComponent = {}

---@param ServerLinearVelocity FVector
---@param ServerAngularVelocity FVector
function UVehicleMotorbikeComponent:ForceSyncVelocity(ServerLinearVelocity, ServerAngularVelocity) end

---@return boolean
function UVehicleMotorbikeComponent:GetIsContact() end

---@return number
function UVehicleMotorbikeComponent:GetAirControlRightInput() end

---@param RightInput number
function UVehicleMotorbikeComponent:ServerUpdateInput(RightInput) end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleMotorbikeComponent:HandleOnVehicleHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@return boolean
function UVehicleMotorbikeComponent:ShouldCollectAirStunts() end

---@param benable boolean
function UVehicleMotorbikeComponent:SetKickstandStabilize(benable) end

function UVehicleMotorbikeComponent:OnRep_KickstandStabilize() end

function UVehicleMotorbikeComponent:CheckKickstandWhenRegionChanged() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleMotorbikeComponent:ServerEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleMotorbikeComponent:ServerExitVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleMotorbikeComponent:ClientEnterVehicle(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param VehicleSeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function UVehicleMotorbikeComponent:ClientExitVehicle(Character, VehicleSeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function UVehicleMotorbikeComponent:ClientChangeSeat(Character, SeatType, SeatIdx) end

---@param Damage number
function UVehicleMotorbikeComponent:OnVehicleTakeDamage(Damage) end

---@param DeltaSeconds number
function UVehicleMotorbikeComponent:TickMotorSteerRoll(DeltaSeconds) end

---@param VehicleItemHandle UBattleItemHandleBase
function UVehicleMotorbikeComponent:OnVehicleAvatarHandleEquipped(VehicleItemHandle) end
