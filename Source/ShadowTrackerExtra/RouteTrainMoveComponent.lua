---@meta

---@class FRouteTrainState
---@field PositionValue number
---@field ServerStartTime number
---@field bIsMoving boolean
FRouteTrainState = {}


---@class FRouteSplineInfo
---@field SplineTrans FTransform
---@field SplinePoints ULuaArrayHelper<FSplinePoint>
FRouteSplineInfo = {}


---@class URouteTrainMoveComponent: UActorComponent
---@field OnTrainArrivedDelegate FSimulateRouteChanged
---@field OnTrainNearlyArrivedDelegate FSimulateRouteChanged
---@field RailCarTag string @车厢Tag
---@field RailCarFrontContactTag string @前后连接点Tag
---@field RailCarBackContactTag string
---@field HeadingDir ETrainHeadingDir @车厢相对车头的方向
---@field MoveTotalTime number @移动总时长，如果没有配置 SpeedCurve 时生效
---@field bNeedForceUpdateChild boolean @是否需要强制更新子Child Transform 默认是打开的
---@field bMoveSweep boolean @移动时是否 Sweep
---@field TrainLength number @车厢长度
---@field RodeLength number @路线长度
---@field NearlyArriveTipsAheadTime number @到达前几秒提示时间
---@field TrainHitPlayerVelocityMulti number @列车撞人，赋予列车的速度乘积
---@field TrainHitPlayerSetRelativeLoc boolean @列车撞人拉到相对坐标上防止穿插
---@field TrainHitPlayerAddRightVel number @列车撞人给与额外的，往列车运行方向右侧的速度，将人推开（负值往左）
---@field DamageBoxTag string @伤害碰撞Tag
---@field DamageValue number @伤害数值
---@field DamageTimeInterval number @伤害时间间隔，避免连续几帧伤害直接死亡
---@field DamageTypeClass UDamageType @伤害类型
---@field TrainState FRouteTrainState
---@field SplineInfo FRouteSplineInfo
---@field bClientIsMoving boolean
---@field ClientMoveTime number
---@field ClientStopMoveValue number
---@field bHasShowNearlyArriveTip boolean
---@field CurSpeed FVector
---@field bHasInit boolean
---@field DamagedPlayerTime ULuaMapHelper<AActor, number>
---@field TrainOverlappedActors ULuaArrayHelper<AActor>
---@field RailCars ULuaArrayHelper<FRailCar> @车厢数组
local URouteTrainMoveComponent = {}

---初始化车厢
---@param SplineComp USplineComponent
function URouteTrainMoveComponent:InitTrain(SplineComp) end

---强制设置 Spline
---@param SplineComp USplineComponent
function URouteTrainMoveComponent:ForceSetSplineComponent(SplineComp) end

---@param TargetT number
function URouteTrainMoveComponent:StartMove(TargetT) end

---@param TargetT number
function URouteTrainMoveComponent:StopMove(TargetT) end

---根据SpeedCurve上的 Value 计算火车的位置
---@param CurveValue number
---@param DeltaTime number
function URouteTrainMoveComponent:CalcTrainPosition(CurveValue, DeltaTime) end

---@return number
function URouteTrainMoveComponent:GetServerTime() end

---@param Instigator AController
function URouteTrainMoveComponent:SetDamageInstigator(Instigator) end

---@param LastDamageBoxTrans FTransform
function URouteTrainMoveComponent:TraceDamageActor(LastDamageBoxTrans) end

---@param LastDamageBoxTrans FTransform
---@param CurDamageBoxTrans FTransform
---@param BoxExtend FVector
---@param Character ACharacter
---@param ApplyVelocity FVector
function URouteTrainMoveComponent:ApplyCharacterImpulse(LastDamageBoxTrans, CurDamageBoxTrans, BoxExtend, Character, ApplyVelocity) end

---@param ComponentVelocity FVector
function URouteTrainMoveComponent:SetComponentSpeed(ComponentVelocity) end

function URouteTrainMoveComponent:OnRep_TrainState() end

function URouteTrainMoveComponent:OnRep_SplineInfo() end

---@return boolean
function URouteTrainMoveComponent:CheckSplineComponent() end
