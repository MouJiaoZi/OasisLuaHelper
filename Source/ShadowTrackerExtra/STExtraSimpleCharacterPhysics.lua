---@meta

---@class ESimulatePhysicsType
---@field NONE number
---@field SKILL number
---@field IMPULSE number
ESimulatePhysicsType = {}


---@class ECustomQueryMobilityType
---@field CustomAny number
---@field CustomStatic number
---@field CustomDynamic number
ECustomQueryMobilityType = {}


---@class FOnSimpleCharacterPhysicsStopped : ULuaMulticastDelegate
FOnSimpleCharacterPhysicsStopped = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SimulatePhysicsType: ESimulatePhysicsType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSimpleCharacterPhysicsStopped:Add(Callback, Obj) end

---触发 Lua 广播
---@param SimulatePhysicsType ESimulatePhysicsType
function FOnSimpleCharacterPhysicsStopped:Broadcast(SimulatePhysicsType) end


---@class USTExtraSimpleCharacterPhysics: UActorComponent
---@field bEnabled boolean
---@field VelocityDampingOnGround number @在地上时的Damping
---@field VelocityDampingInMidAir number @在空中时的Damping
---@field StepHeight number
---@field StepHeightCapsuleRadiusFactor number
---@field TestPassWallCapsuleHeightScaleForSkill number
---@field MaxVelocityForSimulation number
---@field VehicleHitFeedBack number @被载具撞击时反馈到载具上的减速系数
---@field VehicleImpluseScale number @被载具撞飞时的缩放系数
---@field HorizontalVelocitySquaredForSimulate number @在空中时的Damping
---@field ResetSimulatePreventPenetrationTime number
---@field LinkJumpVelocityAngle number @从Link处跳下时速度向上抬起角度
---@field LinkJumpVelocityValue number @从Link处跳下时速度值
---@field OnSimpleCharacterPhysicsStopped FOnSimpleCharacterPhysicsStopped
---@field bPreventPenetration boolean @模拟防止穿透
---@field FindGroundTraceType ECustomQueryMobilityType
---@field SimulatePhysicsQueryMobilityType ECustomQueryMobilityType
---@field bSimulateChannelUseCapsuleCollision boolean
---@field SimulatePhysicsTraceChannel ECollisionChannel
---@field SimulatePhysicsIgnoreCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field bSimulateConstraintOnNavMesh boolean
---@field SimulateFilterClass UNavigationQueryFilter
---@field SimulateProjectNavExtend FVector
---@field SimulatePassWallMinTimeBack number
---@field bCanAddVelocityWhenInSkill boolean
local USTExtraSimpleCharacterPhysics = {}

---@param InVelocity FVector
---@param SimulateType ESimulatePhysicsType
function USTExtraSimpleCharacterPhysics:SetVelocity(InVelocity, SimulateType) end

---@param InVelocity FVector
function USTExtraSimpleCharacterPhysics:AddVelocity(InVelocity) end

---@param InVelocity FVector
---@param PreventPenetration boolean
---@return boolean
function USTExtraSimpleCharacterPhysics:StartSkillSimulate(InVelocity, PreventPenetration) end

---@param InAcceleration number
---@param InTargetSpeed number
function USTExtraSimpleCharacterPhysics:SetSkillSimulateAcceleration(InAcceleration, InTargetSpeed) end

---@return boolean
function USTExtraSimpleCharacterPhysics:StopSkillSimulate() end

---@param InVelocity FVector
---@param PreventPenetration boolean
---@return boolean
function USTExtraSimpleCharacterPhysics:StartImpulseSimulate(InVelocity, PreventPenetration) end

---@param DesPos FVector
---@param InVelocity FVector
---@param InIgnorBlockTime number
---@return boolean
function USTExtraSimpleCharacterPhysics:StartImpulseSimulateIgnorBlock(DesPos, InVelocity, InIgnorBlockTime) end

---@return boolean
function USTExtraSimpleCharacterPhysics:StopImpulseSimulate() end

---@return FVector
function USTExtraSimpleCharacterPhysics:GetVelocity() end

---@return FVector
function USTExtraSimpleCharacterPhysics:GetTouchGroundVelocity() end

---@return boolean
function USTExtraSimpleCharacterPhysics:IsOnGround() end

---@return boolean
function USTExtraSimpleCharacterPhysics:FindGround() end

function USTExtraSimpleCharacterPhysics:ActivatePhysics() end

---@param _bIsActive boolean
function USTExtraSimpleCharacterPhysics:SetCharacterMovementActive(_bIsActive) end
