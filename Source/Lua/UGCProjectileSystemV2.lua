---@meta

---技能抛体系统接口库
---@class UGCProjectileSystemV2
UGCProjectileSystemV2 = {}

---发射技能抛体
---生效范围：服务器
---@param ProjectileClass UClass @抛体类型
---@param Owner AActor @新生成抛体的所属对象
---@param Location FVector @生成坐标
---@param Direction FVector @初始方向
---@param Speed number @初始速度
---@param GravityScale number @初始重力系数
---@param DamageValue number @抛体的伤害值
---@param DamageType FRestrictedDamageTypeData @抛体的伤害类型
---@return APESkillProjectileBase @抛体实例
function UGCProjectileSystemV2.CreateProjectile(ProjectileClass, Owner, Location, Direction, Speed, GravityScale, DamageValue, DamageType) end

---发射技能抛体（不传递伤害）
---生效范围：服务器
---@param ProjectileClass UClass @抛体类型
---@param Owner AActor @新生成抛体的所属对象
---@param Location FVector @生成坐标
---@param Direction FVector @初始方向
---@param Speed number @初始速度
---@param GravityScale number @初始重力系数
---@param Target number @抛体的伤害值
---@return APESkillProjectileBase @抛体实例
function UGCProjectileSystemV2.CreateProjectileSimple(ProjectileClass, Owner, Location, Direction, Speed, GravityScale, Target) end

---设置抛体速度方向
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@param NewDirection FVector @新方向
function UGCProjectileSystemV2.SetDirection(Projectile, NewDirection) end

---设置抛体速度大小
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@param NewSpeed number @新速度
function UGCProjectileSystemV2.SetSpeed(Projectile, NewSpeed) end

---设置抛体重力系数
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@param NewGravityScale number @新重力系数
function UGCProjectileSystemV2.SetGravityScale(Projectile, NewGravityScale) end

---设置抛体伤害，会覆盖所有的伤害值，伤害方式会调整为常量
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@param NewDamage number @伤害值
function UGCProjectileSystemV2.SetDamage(Projectile, NewDamage) end

---设置抛体目标
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@param NewTarget APawn @新的目标单位
function UGCProjectileSystemV2.SetTarget(Projectile, NewTarget) end

---获取抛体移动组件
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@return UProjectileMovementComponent @抛体组件类
function UGCProjectileSystemV2.GetProjectileMovementComponent(Projectile) end

---获取抛体速度方向
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@return FVector @当前速度方向
function UGCProjectileSystemV2.GetDirection(Projectile) end

---获取抛体速度大小
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@return number @新速度
function UGCProjectileSystemV2.GetSpeed(Projectile) end

---获取抛体重力系数
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@return number @新重力系数
function UGCProjectileSystemV2.GetGravityScale(Projectile) end

---获取抛体目标
---生效范围：服务器
---@param Projectile APESkillProjectileBase @抛体实例
---@return APawn @新的目标单位
function UGCProjectileSystemV2.GetTarget(Projectile) end

---获取抛体组中的抛体
---生效范围：服务器
---@param TargetActor APESkillProjectileBase @发射抛体的角色
---@param GroupKey string @抛体组Key
---@return APESkillProjectileBase[] @抛体组中的抛体
function UGCProjectileSystemV2.GetProjectileListByGroupKey(TargetActor, GroupKey) end