---@meta

---@class UUGCCharacterPhysicsComponent: UActorComponent
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
---@field bSimulateConstraintOnNavMesh boolean
---@field SimulateFilterClass UNavigationQueryFilter
---@field SimulateProjectNavExtend FVector
local UUGCCharacterPhysicsComponent = {}

---@param InVelocity FVector
---@param SimulateType ESimulatePhysicsType
function UUGCCharacterPhysicsComponent:SetVelocity(InVelocity, SimulateType) end

---@param InVelocity FVector
function UUGCCharacterPhysicsComponent:AddVelocity(InVelocity) end

---@param InVelocity FVector
---@param PreventPenetration boolean
---@return boolean
function UUGCCharacterPhysicsComponent:StartSkillSimulate(InVelocity, PreventPenetration) end

---@return boolean
function UUGCCharacterPhysicsComponent:StopSkillSimulate() end

---@param InVelocity FVector
---@param PreventPenetration boolean
---@return boolean
function UUGCCharacterPhysicsComponent:StartImpulseSimulate(InVelocity, PreventPenetration) end

---@param DesPos FVector
---@param InVelocity FVector
---@param InIgnorBlockTime number
---@return boolean
function UUGCCharacterPhysicsComponent:StartImpulseSimulateIgnorBlock(DesPos, InVelocity, InIgnorBlockTime) end

---@return boolean
function UUGCCharacterPhysicsComponent:StopImpulseSimulate() end

---@return FVector
function UUGCCharacterPhysicsComponent:GetVelocity() end

---@return FVector
function UUGCCharacterPhysicsComponent:GetTouchGroundVelocity() end

---@return boolean
function UUGCCharacterPhysicsComponent:IsOnGround() end

---@return boolean
function UUGCCharacterPhysicsComponent:FindGround() end

function UUGCCharacterPhysicsComponent:ActivatePhysics() end

---@param _bIsActive boolean
function UUGCCharacterPhysicsComponent:SetCharacterMovementActive(_bIsActive) end
