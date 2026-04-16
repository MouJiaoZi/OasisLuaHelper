---@meta

---空气墙形状类型
---@class EAirWallShapeType
---@field Box number @Box
---@field Capsule number @Capsule
---@field Sphere number @Sphere
EAirWallShapeType = {}


---载具空气墙Actor 用于阻挡载具，支持自定义形状和软阻挡效果
---@class AVehicleAirWallActor: AActor
---@field ShapeType EAirWallShapeType @空气墙形状类型
---@field SoftBlockStrength number @软阻挡强度（0-1，值越大阻挡越强）
---@field SoftBlockDistance number @软阻挡距离（载具距离空气墙多远开始受到阻挡力）
---@field MaxBlockForce number @最大阻挡力
---@field HardBoundaryAcceleration number @硬边界阻挡加速度（当载具穿过空气墙时的强制推回加速度，单位cm/s2）
---@field MaxPenetrationDistance number @最大允许穿透距离（超过此距离将强制拉回）
---@field bEnableForceTeleport boolean @是否启用强制传送到合法位置（当穿透过深时直接传送载具）
---@field bUseMassIndependentForce boolean @是否使用质量无关的力（AccelChange模式，推荐开启以确保对不同质量载具效果一致）
---@field bEnableDebugDraw boolean @是否启用调试绘制
---@field DebugDrawColor FColor @调试绘制颜色
---@field bEnableDebugText boolean @是否启用调试文本显示（DrawDebugString）
---@field DebugTextDisplayTime number @调试文本显示时间（秒）
---@field OverlappingVehicles ULuaArrayHelper<ASTExtraVehicleBase> @当前重叠的载具列表
---@field VehicleImpactCorrectionApplied ULuaMapHelper<ASTExtraVehicleBase, boolean> @记录载具是否已经触发过碰撞速度修正（用于只在刚撞上时触发一次）
---@field VehicleCollisionNormals ULuaMapHelper<ASTExtraVehicleBase, FVector> @记录载具碰撞时的墙面朝外法线（用于确保推力方向正确，避免穿墙时方向反转）
local AVehicleAirWallActor = {}

---处理载具重叠开始
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AVehicleAirWallActor:OnVehicleBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---处理载具重叠结束
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function AVehicleAirWallActor:OnVehicleEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---设置形状类型
---@param NewShapeType EAirWallShapeType
function AVehicleAirWallActor:SetShapeType(NewShapeType) end

---设置软阻挡参数
---@param Strength number
---@param Distance number
---@param MaxForce number
function AVehicleAirWallActor:SetSoftBlockParameters(Strength, Distance, MaxForce) end
