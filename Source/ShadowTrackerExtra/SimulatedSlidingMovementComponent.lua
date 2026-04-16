---@meta

---滑雪板板状态
---@class ESnowBoardAirStunt
---@field ESBAS_None number
---@field ESBAS_Stunt0 number
---@field ESBAS_Stunt1 number
---@field ESBAS_Stunt2 number
---@field ESBAS_Stunt3 number
ESnowBoardAirStunt = {}


---滑雪板板状态
---@class ESnowBoardState
---@field ESBS_InLand number
---@field ESBS_FLYING0 number
---@field ESBS_FLYING1 number
---@field ESBS_FLYING2 number
---@field ESBS_FLYING3 number
---@field ESBS_SUPERJUMP number
---@field ESBS_AIRSTUNT0 number
---@field ESBS_AIRSTUNT1 number
---@field ESBS_AIRSTUNT2 number
---@field ESBS_AIRSTUNT3 number
---@field ESBS_FALLING number
ESnowBoardState = {}


---@class FOnSpeedReachJumpDelegate : ULuaMulticastDelegate
FOnSpeedReachJumpDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bSpeedReachJump: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSpeedReachJumpDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bSpeedReachJump boolean
function FOnSpeedReachJumpDelegate:Broadcast(bSpeedReachJump) end


---@class FOnSnowboardSuperJump : ULuaSingleDelegate
FOnSnowboardSuperJump = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSnowboardSuperJump:Bind(Callback, Obj) end

---执行委托
function FOnSnowboardSuperJump:Execute() end


---@class USimulatedSlidingMovementComponent: USTExtraVehicleMovementComponent4W
---@field StartBrakeMontageSpeed number
---@field EndBrakeMontageSpeed number
---@field SpeedThresholds number
---@field EnterSnowBoardUpImpulse number @原地上滑板向上冲量
---@field SpeedUpImpulse number @前蹭时的冲量大小
---@field JumpImpulse number @起跳时的冲量大小(小跳)
---@field JumpImpulseBig number @起跳时的冲量大小(大跳)
---@field JumpImpulseSuper number @起跳时的冲量大小(超级跳)
---@field ImpulseMinusGradeCompensate number @下坡起跳时的冲量补偿 速度(m/s)*补偿
---@field MaxStayAirTimeUseServerCtr number
---@field StayAirTimer number
---@field FallingLandHardThreshold number
---@field bIsLandingHeavy boolean
---@field JumpRiseBaseTime number
---@field AutoExitHeightThreshold number
---@field HitTestToSeaLevelBias number
---@field bEnableAutoThrottleInput boolean @是否开启自动油门输入功能
---@field AutoThrottleInput number @自动油门输入时模拟的油门输入值
---@field bAutoThrottleInput boolean @是否自动油门输入
---@field SnowBoardState ESnowBoardState @状态维护
---@field OnServerSnowboardSuperJump FOnSnowboardSuperJump
---@field FallingEnterTime number
---@field FlyingEnterTime number
---@field DisToLand number
---@field ImpactPoint FVector
---@field ImpactNormal FVector
---@field DesiredLandRot FRotator
---@field HasLandCheckResult boolean
---@field LastSurfaceType EPhysicalSurface
---@field SpeedUpJumpDelay number
---@field SpeedUpForwardParm number
---@field VehiclePhysicalSurfaceDragConfig ULuaMapHelper<EPhysicalSurface, number>
---@field NoMappingLinearDamping number
---@field AirLinearDamping number
---@field GravityMaxLandDis number
---@field NearLandAdjustDis number
---@field InitPowerTime number
---@field InitPowerCD number
---@field bAutoInitPowerWhenSlope boolean
---@field SlideThrottleFactor number
---@field BackoffThrottleFactor number
---@field ForwardThrottleFactor number
---@field InitPowerSpeed number
---@field LandTraceMaxHeight number
---@field LandTraceForwardOffset number
---@field SlidingWheelNotInAirMinNum number
---@field SlidingSpeedTolerate number
---@field SlidingSpeedCosAngle number
---@field MagicFloat1 number
---@field MagicFloat2 number
---@field PlayAnimDisToLand number
---@field InitPowerTimeCounter number
---@field RepValidInitPower boolean
---@field OnSpeedReachJumpDelegate FOnSpeedReachJumpDelegate
---@field bCanServerSetBoost boolean
---@field AirStuntEnterTime number
---@field AirStuntAnimTime ULuaMapHelper<ESnowBoardAirStunt, number>
---@field CurrentAirStunt ESnowBoardAirStunt
local USimulatedSlidingMovementComponent = {}

---@param bIsSuperJump boolean
function USimulatedSlidingMovementComponent:ServerDoJump(bIsSuperJump) end

---@param InState ESnowBoardState
---@return boolean
function USimulatedSlidingMovementComponent:IsFly(InState) end

---@param InState ESnowBoardState
---@return boolean
function USimulatedSlidingMovementComponent:IsAirStunt(InState) end

function USimulatedSlidingMovementComponent:OnRep_SnowBoardState() end

---@param InState ESnowBoardState
---@param bLandingHeavy boolean
function USimulatedSlidingMovementComponent:ServerSetSnowBoardState(InState, bLandingHeavy) end

---@param InState ESnowBoardState
---@param bLandingHeavy boolean
function USimulatedSlidingMovementComponent:ClientSetSnowBoardState(InState, bLandingHeavy) end

---@param IsSucc boolean
function USimulatedSlidingMovementComponent:OnEnterVehicle(IsSucc) end

function USimulatedSlidingMovementComponent:OnExitVehicle() end

---@param IsEnter boolean
function USimulatedSlidingMovementComponent:EnterOrExitVehicleJump(IsEnter) end

function USimulatedSlidingMovementComponent:DelaySpeedUpJump() end

---@return boolean
function USimulatedSlidingMovementComponent:IsSpeedReachJumpThreshold() end

---@return boolean
function USimulatedSlidingMovementComponent:NeartLand() end

function USimulatedSlidingMovementComponent:SuperJump() end

---@param IsEnterVehicle boolean
function USimulatedSlidingMovementComponent:ServerInitPower(IsEnterVehicle) end

function USimulatedSlidingMovementComponent:ServerImpulseUp() end

---@param IsEnterVehicle boolean
function USimulatedSlidingMovementComponent:BroadcastClientSpeedUp(IsEnterVehicle) end

---@param InAirStunt ESnowBoardAirStunt
function USimulatedSlidingMovementComponent:SetCurrentAirStunt(InAirStunt) end
