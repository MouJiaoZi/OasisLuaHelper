---@meta

---@class FFPVSeekAndLockConfig
---@field LockTotalTime number @锁定时间
---@field ShrinkSpeed number @缩小速度(像素)
---@field FrameColor FLinearColor @缩小速度(像素)
FFPVSeekAndLockConfig = {}


---@class ASTExtraFPVDrone: ASTExtraUAVVehicle
---@field TrySeekAndGetLockTargetInterval number @尝试搜索新目标时间间隔
---@field CheckSeekAndGetLockTargetVisibilityInterval number @目标可见性检测时间间隔
---@field TraceTargetInterval number @射线检测朝向目标检测时间间隔
---@field InitialLockFrameLength number @一阶段初始锁定框边长
---@field FinalLockFrameLength number @三阶段锁定框边长
---@field MaxSeekDistance number @最大锁定距离
---@field SeekAreaPixelSize number @锁定区域方形边长像素大小
---@field SeekStageConfig ULuaArrayHelper<FFPVSeekAndLockConfig> @锁定多阶段配置
---@field DefaultBorderColor FLinearColor @默认UI Border颜色
---@field LockUIScale number @LockUI的额外缩放值
---@field LockWidget UWidget
---@field BorderWidget UWidget
---@field TrySeekAndGetLockTargetTimer number
---@field CheckSeekAndGetLockTargetVisibilityTimer number
---@field MaxDiveTime number @最大俯冲时间，超过该时间会自行爆炸，避免无止尽的追踪
---@field DiveUIStylePath string
---@field NoLockedTargetTipsID number
---@field ExplosionBaseDamage number
---@field ExplosionMinimumDamage number
---@field ExplosionRadiusInner number
---@field ExplosionRadiusOuter number
---@field ExplosionRadiusNoCollision number
---@field ExplosionDamageFalloff number
---@field ExplosionBaseMomentumMag number
---@field ExplosionDamageType UDamageType
---@field HitExplosionIgnoreActors ULuaArrayHelper<AActor>
---@field bIsDiving boolean
---@field bUsingDiveUIStyle boolean
---@field DivePressed boolean
---@field DiveTimer number
---@field HasExploded boolean
local ASTExtraFPVDrone = {}

---@return boolean
function ASTExtraFPVDrone:NotDestroyWhenShutDown() end

function ASTExtraFPVDrone:BPOnExplod() end

---@param HealthState ESTExtraVehicleHealthState
function ASTExtraFPVDrone:ClientOnVehicleHealthStateChangedNativeEvent(HealthState) end

---@param Target AActor
function ASTExtraFPVDrone:SendLockTargetToServer(Target) end

---@param Target AActor
function ASTExtraFPVDrone:AddTarget(Target) end

---@param Target AActor
function ASTExtraFPVDrone:RemoveTarget(Target) end

---@param Target ASTExtraBaseCharacter
function ASTExtraFPVDrone:AddCharacterTarget(Target) end

---获取当前锁定阶段
---@return number
function ASTExtraFPVDrone:GetCurrentSeekAndLockStage() end

---判断锁定目标是否被可见
---@param Target AActor
---@return boolean
function ASTExtraFPVDrone:CheckTargetIsVisible(Target) end

---@return boolean
function ASTExtraFPVDrone:IsLockComplete() end

function ASTExtraFPVDrone:OnRep_ReplicatedLockTarget() end

function ASTExtraFPVDrone:OnSelfBeLocked() end

---@return boolean
function ASTExtraFPVDrone:WantShowLockUI() end

---@param OutPosition FVector2D
---@param OutScale FVector2D
---@param OutColor FLinearColor
function ASTExtraFPVDrone:GetLockUIInfo(OutPosition, OutScale, OutColor) end

function ASTExtraFPVDrone:DiveToTarget() end

---@param Target AActor
function ASTExtraFPVDrone:ServerDiveToTarget(Target) end

---@param IsSuccess boolean
function ASTExtraFPVDrone:RspDiveToTarget(IsSuccess) end

---@param IsSuccess boolean
function ASTExtraFPVDrone:OnClientDiveToTarget(IsSuccess) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraFPVDrone:HandleOnVehicleHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---@return boolean
function ASTExtraFPVDrone:IsDiving() end

function ASTExtraFPVDrone:OnRep_TargetActor() end
