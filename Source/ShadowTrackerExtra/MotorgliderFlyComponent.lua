---@meta

---@class FAirInput
---@field Throttle number
---@field AxisControls FVector
FAirInput = {}


---@class FInputInterpSetting
---@field RiseRate number
---@field FallRate number
---@field NegativeInterpRate number
FInputInterpSetting = {}


---@class FMappedData
---@field InputMap FVector2D
---@field OutputMap FVector2D
FMappedData = {}


---@class FAirGeneralConfig
---@field bCheckRelativeAltitude boolean @是否检查相对高度
---@field bForceCheckRelativeAltitude boolean
---@field MaxRelAltitudeDistInM number @最大高度设置
---@field MaxTraceDistInM number @向下最大射线长度
---@field bCheckRelativeWaterAltitude boolean @检查相对水面的高度
---@field MinSpeedForAirTick number @最小速度计算升力
---@field bUseForwardVelCalcAirTick boolean
---@field SpeedToAnimInputMap FMappedData @速度 到机翼动画的幅度大小的 转换配置
FAirGeneralConfig = {}


---@class FAirInputConfig
---@field RollInterpolation FInputInterpSetting @左右旋转输入值增加与衰减的速度
---@field PitchInterpolation FInputInterpSetting
---@field ThrottleForwardInterpolation FInputInterpSetting @左右俯仰输入值增加与衰减的速度
---@field ThrottleBackwardInterpolation FInputInterpSetting @正向油门输入值增加与衰减的速度
FAirInputConfig = {}


---@class FAirRotorConfig
---@field ThrottleInterpForward FInputInterpSetting @正向加速时 螺旋桨 油门 启动速度 与衰减速度 决定螺旋桨转速
---@field ThrottleInterpReverse FInputInterpSetting @反向加速时 螺旋桨 油门 启动速度 与衰减速度
---@field RotorSpeedThrottleOffset FMappedData @根据速度与 输入油门相加得到 当前真正的 螺旋桨油门，根据螺旋桨油门得到螺旋桨转速
---@field EnginePowerRotorSpeedScale FMappedData @根据引擎的启动程度对螺旋桨油门的影响系数
---@field EngineOnRPMInterpSpeed number @当引擎开启时 螺旋桨转速变化的差值速度
---@field EngineOffRPMInterpSpeed number @当引擎关闭时 螺旋桨转速变化的差值速度
---@field FastRotorOnSpeed number @螺旋桨需要表现低速旋转到高速旋转转换的临界值  当前转速/最大转速
---@field FastRotorOffSpeed number @螺旋桨需要表现高速旋转到低速旋转转换的临界值  当前转速/最大转速
FAirRotorConfig = {}


---@class FAirEngineConfig
---@field TorqueMassScale number @质量影响系数
---@field ComputeAltitudeScalarWithOnlyRelAltitude boolean
---@field StaticCOMOffset FVector @拉力作用点相对于 滑翔机重心 的偏移位置
---@field RollInputOffsetVector FVector @Roll对 拉力偏移的大小
---@field RollInputOffsetMap FMappedData @根据当前Roll的程度 得到 拉力位置偏移系数
---@field PitchInputOffsetVector FVector @Pitch对 拉力偏移的大小
---@field PitchInputOffsetMap FMappedData @根据当前Pitch的程度 得到 拉力位置偏移系数
---@field ElevationScalarSpeedMap FMappedData @根据速度得到 俯仰角对拉力的影响系数
---@field ReverseRelativeAltMap FMappedData @反向油门时 高度对拉力的影响大小
---@field ReverseBackSpeedMap FMappedData @反向油门时 速度对拉力的影响大小
---@field MinThrottleForBackForce number @当真正油门小于这个值的时候，才会进行反向作用力
---@field MinSpeedInKmForFastOn number @引擎能够快速启动速度的值 (引擎完全启动是一个过程)
---@field MinRotorRpmForFastOn number @引擎能够快速启动时的螺旋桨转速值，它和速度满足任意一个条件都可以转成快速启动
---@field FastOnInterp FInputInterpSetting @引擎快速启动时的速度
---@field SlowOnInterp FInputInterpSetting @引擎慢速启动时的速度
FAirEngineConfig = {}


---@class FAirVehicleState
---@field SpeedInKm number
---@field RelativeAltitudeMeters number
---@field RelativeAltitudeAlpha number
---@field AbsoluteAltitudeMeters number
---@field ClimbRate number
---@field EngineForceNormalized number
---@field GroundEffectAlpha number
---@field GroundEffectLocation FVector
---@field GroundEffectNormal FVector
---@field bRelativeAltitudeToWater boolean
FAirVehicleState = {}


---@class FAirEngineState
---@field bIsEngineOn boolean
---@field EngineOnAlpha number
---@field EnginePower number
---@field EnginePowerAlpha number
---@field CurrentEngineThrottle number
---@field CurrentRotorThrottle number
---@field CurrentRotorRPM number
---@field TargetRotorRPM number
---@field CurrentRotorRotation number
---@field CurrentRotorRotationFast number
---@field bIsFastRotorActive boolean
FAirEngineState = {}


---@class FAirLiftConfig
---@field LiftForceMassScale number @质量对升力的影响系数
---@field bLiftUseAbsoluteDirection boolean @升力方向是否取世界绝对方向
---@field bUseAbsoluteDirectionOnPitchUp boolean
---@field bUseAbsoluteDirectionOnPitchValue number
---@field bLiftSpeedUseForwardDir boolean @升力计算用的速度是否取向前的朝向
---@field bReverseSpeedDontHaveLiftForce boolean
---@field bLiftUseIndividualConfigOnWater boolean @升力计算在水面上时是否使用另一套配置
---@field SpeedToLiftForceMap FMappedData @速度对升力的影响系数
---@field bEnableKeepPitchLiftForce boolean
---@field SpeedToLiftForceMapOnWater FMappedData @速度对升力的影响系数，在水面上
---@field LiftForceStaticOffset FVector @升力 受力点相对于重心的偏移量
---@field RollLiftOffsetMap FMappedData @Roll程度 对于升力偏移的影响系数
---@field RollLiftOffsetVector FVector @Roll程度 对于升力偏移
---@field PitchLiftOffsetMap FMappedData @Pitch程度 对于升力偏移的影响系数
---@field PitchLiftOffsetVector FVector @Pitch程度 对于升力偏移
---@field GroundEffectMaxDistance number @地面能够提供升力影响的最大地面高度，在一定高度内也会增加升力，当检测包围盒与静态物体相交时不再提供升力 就是为了保证平稳性
---@field GroundEffectMassScale number @地面升力的质量影响系数
---@field GroundEffectExtent FVector @检测是否与地面距离是否相交的 包围盒大小,
---@field GroundEffectSpeedMap FMappedData @速度对地面升力的影响系数
---@field GroundEffectTraceOffset FVector @检测起始位置是 COM(重心) + 偏移
---@field GroundEffectAlphaOffsetMap FMappedData @地面升力的位置偏移
---@field AltitudeToHeightLimitForceMap FMappedData @相对高度对限高下压力的映射
---@field LiftFactorOnNoDriver number
---@field bEnableDiveGravityBoost boolean @是否开启俯冲时重力加速增益（机头朝下时，将重力在前向的分量转化为额外推力）
---@field DiveGravityBoostScale number @俯冲重力加速增益的强度系数，默认 1.0
FAirLiftConfig = {}


---@class FAirControlTorqueConfig
---@field RollForceScale number @质量对 Roll 扭矩的系数
---@field PitchForceScale number @质量对 Pitch 扭矩的系数
---@field SpeedToRollForceMap FMappedData @速度对 Roll 扭矩的系数
---@field SpeedToPitchForceMap FMappedData @速度对 Pitch 扭矩的系数
---@field SpeedToRollDampingMap FMappedData @速度对Roll 衰减的影响
---@field SpeedToPitchDampingMap FMappedData @速度对Pitch 衰减的影响
---@field SpeedToYawDampingMap FMappedData @速度对Yaw 衰减的影响
---@field RollTargetForceMap FMappedData @当前Roll对 Roll扭矩的影响
---@field PitchTargetForceMap FMappedData @当前Pitch对 Pitch扭矩的影响
---@field RollToPitchForceMap FMappedData @当前Roll对 Pitch扭矩的影响
---@field bEnableAutoReturn_Roll boolean @是否开启Roll方向自动回正功能
---@field AutoReturnTorqueMassScale_Roll number @Roll方向自动回正的Torque大小和当前Mass的关系
---@field AutoReturnTorqueMassScale_RollPow number @Roll方向自动回正Torque大小和当前倾斜程度的关系的Pow值
---@field AutoReturnTargetTorqueMap_Roll FMappedData @Roll方向自动回正Torque大小和当前倾斜程度的关系
---@field bEnableAutoReturn_Pitch boolean @是否开启Pitch方向自动回正功能
---@field AutoReturnTorqueMassScale_Pitch number @Pitch方向自动回正的Torque大小和当前Mass的关系
---@field AutoReturnTorqueMassScale_PitchPow number @Pitch方向自动回正Torque大小和当前倾斜程度的关系的Pow值
---@field AutoReturnTargetTorqueMap_Pitch FMappedData @Pitch方向自动回正Torque大小和当前倾斜程度的关系
FAirControlTorqueConfig = {}


---@class FAirControlForceConfig
---@field TorqueMassScale number @整体质量系数
---@field bRollControlForceShouldIgnoreZ boolean @Roll方向的ControlForce是否需要去除Z方向的影响
---@field StaticCOMOffset FVector @相对于重心的偏移大小
---@field SpeedToControlForceMap FMappedData @速度对Control力的影响
FAirControlForceConfig = {}


---@class FAirControlLimitConfig
---@field MaxRoll number
---@field MaxPitch number
---@field MaxYaw number
---@field bUsePitchRange boolean
---@field PitchRange FVector2D
FAirControlLimitConfig = {}


---@class FAirDragConfig
---@field SpeedToForwardForceMap FMappedData @根据当前速度 得到阻力 如果SpeedToForwardMergeCurve曲线为空才会使用这个
---@field ForwardVelocityDotToForwardForceMap FMappedData @根据当前速度方向在当前机身方向上投影大小 得到到当前速度 与 机身正向速度 差值系数
---@field bShouldClampDragFactor boolean @最终的阻力系数是否应该Clamp到[0,1]
---@field bHeightToSpeedCurveOnlyHorizontal boolean
---@field EngineOffDragScale number @引擎停止时的阻力大小系数
---@field DragScaleOnNoDriver number
---@field ZeroThrottleDragThreshold number
---@field ZeroThrottleRelAltitudeDragThreshold number
---@field ZeroThrottleDrag FMappedData @当油门为小于一定阈值时的阻力
---@field bEngineOffIgnoreFallVelZ boolean
---@field EngineOffFallGravityScale number
FAirDragConfig = {}


---@class FMotorgliderMovementFrameData
---@field DeltaTime number
---@field Mass number
---@field Speed number
---@field SpeedInKm number
---@field BodyQuat FQuat
---@field BodyCOM FVector
---@field Velocity FVector
---@field bIsEngineOn boolean
---@field ForwardSpeed number
FMotorgliderMovementFrameData = {}


---@class UMotorgliderFlyComponent: UPawnMovementComponent
---@field CurFrameData FMotorgliderMovementFrameData
---@field PlayerInput FAirInput
---@field CurrentInput FAirInput
---@field LastCurrentInput FAirInput
---@field RepInput FAirInput
---@field bEnableParagliderThrottleInput boolean
---@field ParagliderOverrideThrottleInput number
---@field bUpdateWithTransform boolean
---@field MaxSyncDistanceSqAtServer number
---@field MaxDSControlTime number
---@field CurDSControlTimeLeft number
---@field OverSpeedDSControl number
---@field MaxSpeedDeltaPerSeconds number
---@field NeedCheckSpeedDelta boolean
---@field InputConfig FAirInputConfig @控制玩家输入的配置
---@field GeneralConfig FAirGeneralConfig @滑翔机基础参数配置
---@field RotorConfig FAirRotorConfig @滑翔机螺旋桨的配置
---@field EngineConfig FAirEngineConfig @引擎配置 控制的是 滑翔机前向的拉力
---@field LiftConfig FAirLiftConfig @引擎向上的拉力 配置
---@field AirControlLimitConfig FAirControlLimitConfig @控制最大 Roll 与 Pitch
---@field RollControlReturn boolean
---@field PitchControlReturn boolean
---@field ControlTorqueConfig FAirControlTorqueConfig @控制Roll 与Pitch的 扭矩
---@field ControlForceConfig FAirControlForceConfig @玩家输入的作用力
---@field DragConfig FAirDragConfig @阻力系数 机身速度与机身方向拟合的配置
---@field bConsiderElectronic_Failure_28Config boolean
---@field UseCustomPosCalcTrace boolean
---@field UseCustomPosCalcTraceOffset FVector
---@field EngineState FAirEngineState
---@field AirVehicleState FAirVehicleState
---@field CheckHeightChannel ECollisionChannel @关闭滑翔Tick
---@field CloseGliderTick boolean @关闭滑翔Tick
---@field bCanRunAirTick boolean
---@field bInterpolateThrottle boolean
---@field CleanYUpInputHeight number
---@field bMaintainPowerUnderWater boolean
---@field bNoPowerWhileFlipInWater boolean
---@field FlipInWaterZAngleThreshold number
---@field MinZeroZeroThrottleDrag number
---@field bEngineForce boolean
---@field bUpdateMergeAndDragVelocity boolean
---@field bUpdateLiftForce boolean
---@field bUpdateHeightLimitForce boolean
---@field bUpdateDampingForce boolean
---@field bUpdateControlForce boolean
---@field bUpdateControlForceAngular boolean
---@field bUpdateControlForceControl boolean
---@field bUpdateGroundEffect boolean
---@field bUseTorqueLimit boolean
---@field bZeroThrottleDrag boolean
---@field bEnableMergeSpeed boolean
---@field bYawControl boolean
---@field bEnableDragSpeed boolean
---@field PrintLogTimes number
---@field MaxPrintLogTimes number
---@field MinPrintLogSpeed number
---@field bCurAirTick boolean
---@field bUseCustomDriverAnim boolean
---@field YawSpeedInterpSpeed number
---@field YawSpeedChangeThreshold number
---@field MaxYawControlSpeed number
---@field ExtraDragFactor number
local UMotorgliderFlyComponent = {}

---设置左右旋转
---@param roll number
function UMotorgliderFlyComponent:SetRollInput(roll) end

---设置俯仰角
---@param pitch number
function UMotorgliderFlyComponent:SetPitchInput(pitch) end

---@param throttle number
function UMotorgliderFlyComponent:SetThrottleInput(throttle) end

function UMotorgliderFlyComponent:OnRep_LastCurrentInput() end

function UMotorgliderFlyComponent:OnRep_RepInput() end

---@param InAirInput FAirInput
---@param InCurrentInput FAirInput
function UMotorgliderFlyComponent:Server_UpdateInput(InAirInput, InCurrentInput) end

---@param InAirInput FAirInput
---@param InCurrentInput FAirInput
---@param ClientLocation FVector_NetQuantize100
---@param ClientLinearVelocity FVector_NetQuantize100
---@param ClientRotator FVector_NetQuantizeNormal
---@param ClientAngularVelocity FVector_NetQuantize100
function UMotorgliderFlyComponent:Server_UpdateInputTransform(InAirInput, InCurrentInput, ClientLocation, ClientLinearVelocity, ClientRotator, ClientAngularVelocity) end

---@param NewValue number
function UMotorgliderFlyComponent:SetCurDSControlTimeLeft(NewValue) end

---@return boolean
function UMotorgliderFlyComponent:ShouldSwitchFastRotorActive() end

---@return boolean
function UMotorgliderFlyComponent:IsHasPower() end

---@param DeltaTime number
function UMotorgliderFlyComponent:UpdateYawSpeed(DeltaTime) end
