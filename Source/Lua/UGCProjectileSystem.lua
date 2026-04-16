---@meta

---抛体系统接口库
---@class UGCProjectileSystem
UGCProjectileSystem = {}

---抛体生成参数
---@class ProjectileSpawnInfo
---@field Class UClass @抛体类（'/Game/UGC/UGCGame/Skill/UGC_Projectile.UGC_Projectile_C'）。默认值 nil（必填）
---@field Instigator APawn @发射源。默认值nil（必填）
---@field TargetActorLocation Vector @目标 Actor 的位置。默认值 {X=0,Y=0,Z=0}（跟 TargetActor 二选一必填）
---@field bAttachToTargetActorCenter bool @是否自动设置 TargetActorLocation 为 TargetActor 的的坐标，需要设置 TargetActor 才能生效。默认值 true（可选）
---@field ProjectileGravityScale float @重力系数。当 (bIsRay==true)||(bIsRay=false&&bUseHighArc=true) 时配置无效，会先被改成 2.5，然后根据初始位置跟终点位置的 Z 差值取 HighArcGravityScales[?].GravityScale 覆盖该值。默认值 0（可选）
---@field Speed float @初始速度，不可以小于等于 0。默认值 0（必填）
---@field bIsRay bool @是否是射线。影响初速度方向。默认值 false（可选）
---@field bUseHighArc bool @是否为高抛物线。默认值 false（可选）
---@field HighArcGravityScales table @高抛物线，不同初始位置跟终点位置的 Z 差值的 ProjectileGravityScale。参数形式：{ {HeightDiff=10, GravityScale=1}, {HeightDiff=20, GravityScale=2}, --[[...]] }。默认值{}（可选）
---@field TargetActorOffset Vector @终点位置的叠加偏移系数。TargetActorLocation=TargetActorLocation+TargetActorOffset.X*(TargetActorLocation-InitLocation)+{X=0,Y=TargetActorOffset.Y*(TargetActorLocation-InitLocation).Y,Z=0}。默认值 {X=0,Y=0,Z=0}（可选）
---@field InitLocation Vector @初始位置。默认值 nil（可选，没填的话用Instigator的位置）
---@field MaxDistance float @位移最大距离，需要 bNeedCheckMaxDistance=true 才有效。默认值0（可选）
---@field bNeedCheckMaxDistance bool @是否检查位移最大距离，需要配合 MaxDistance 一起使用。默认值 false（可选）
---@field bIsHoming bool @是否跟踪目标 TargetActor。默认值 false（可选）
---@field HomingAccelerationMagnitude float @追踪加速度大小。默认值 0（可选）
---@field TargetActor AActor @目标 Actor。默认值 nil（跟 TargetActorLocation 二选一必填）
---@field AttachSocketName string @初始位置取的 Socket 名字（如果 Instigator 有 SkeletalMesh 的话）。默认值""（可选）
---@field VerifyStartDistance float @初始位置于 Instigator 的距离。默认值 200（可选）
---@field VerifyStartForwardDot float @于初始位置正向的夹角。默认值 0（可选）
local _ProjectileSpawnInfo = {}

---生成抛体
---生效范围：服务器
---@param ProjectileSpawnInfo ProjectileSpawnInfo @抛体生成参数
---@return APVEProjectileBase @抛体对象实例
function UGCProjectileSystem.SpawnProjectile(ProjectileSpawnInfo) end

---获取抛体命中之后是否销毁
---生效范围：服务器&客户端
---@param Projectile APVEProjectileBase @抛体
---@return boolean @是否命中后销毁
function UGCProjectileSystem.GetDestroyAfterHit(Projectile) end

---设置抛体命中之后是否销毁
---生效范围：服务器
---@param Projectile APVEProjectileBase @抛体
---@param bNewDestroyAfterHit boolean @是否销毁
function UGCProjectileSystem.SetDestroyAfterHit(Projectile, bNewDestroyAfterHit) end

---获取抛体运动组件
---生效范围：服务器&客户端
---@param Projectile APVEProjectileBase @抛体
---@return boolean @抛体运动组件
function UGCProjectileSystem.GetPMComp(Projectile) end

---设置抛体命中之后是否继续移动
---生效范围：服务器
---@param Projectile APVEProjectileBase @抛体
---@param bNeedUpdateImmide boolean @是否更新组件速度
function UGCProjectileSystem.SetMoveAfterImpactWithNoLost(Projectile, bNeedUpdateImmide) end

---停止前最后更新的组件
---生效范围：服务器&客户端
---@param Projectile APVEProjectileBase @抛体
---@return boolean @最后更新的组件
function UGCProjectileSystem.GetLastUpdateCompBeforeStop(Projectile) end