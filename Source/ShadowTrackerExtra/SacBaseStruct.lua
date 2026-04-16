---@meta

---射击时信息上传类型 当前只有在大船等动态地板上 以及车载武器上需要上报
---@class EShootTimeDataTransType
---@field ESTDT_None number @不包含Transform信息
---@field ESTDT_DynamicFloor number @动态地板信息
---@field ESTDT_VehicleWeapon number @车载武器信息
EShootTimeDataTransType = {}


---FVector_NetQuantizeNormalSv 拷贝自FVector_NetQuantizeNormal，使用引擎的原本实现 16 bits per component Valid range: -1..+1 inclusive
---@class FVector_NetQuantizeNormalSv
FVector_NetQuantizeNormalSv = {}


---人物脚下的地板上报
---@class FMoveBaseInfo_NetQuantize
FMoveBaseInfo_NetQuantize = {}


---射击时信息
---@class FShootTimeInfo_NetQuantize
FShootTimeInfo_NetQuantize = {}


---骨骼长度信息
---@class FBInfo
FBInfo = {}


---@class FStartFireBulletTrackData
---@field bIsWeaponOwnerSupportBulletTrack boolean
---@field bIsComponentTickEnabled boolean
---@field RecoilValueClimb number
---@field FirstCurveValue FVector
---@field PoseRecoilFactor number
---@field bIsStand boolean
---@field bIsCrouch boolean
---@field bIsProne boolean
---@field AccessoriesVRecoilFactor number
---@field AccessoriesVRecoilFactorModifier number
---@field AccessoriesAllRecoilFactorModifier number
---@field VerticalRecoilFactorModifier number
---@field ExtraInfo string
---@field bShouldNetSerialize boolean
FStartFireBulletTrackData = {}


---StartFire信息
---@class FStartFireInfo
---@field CurShootID number
---@field CurClipID number
---@field CurBulletNumInClip number
---@field ShootMode EShootWeaponShootMode
---@field StartFireTime number @新增数据: StartFire的时间 | CG003 应对射速补偿后作为校验依据 应当等于StartFiringLevelTime
---@field StartFireSysTime number @新增数据: StartFire的硬件时间 | CG003 应对射速补偿后作为校验依据 应当等于StartFiringLevelTime
---@field ShootType ESTEWeaponShootType @上报射击的类型
---@field MuzzlePos FVector
---@field StartFireBulletTrackData FStartFireBulletTrackData
FStartFireInfo = {}


---StopFire信息
---@class FStopFireInfo
---@field CurClipID number
---@field CurrentBullet number
---@field ControllerShootNum number
---@field ClientShootID number
---@field ExtraIntData number
---@field bNeedSerializeExtraIntData boolean
FStopFireInfo = {}


---抛体子弹命中信息
---@class FExplosionProjectileHitInfo
---@field ImpactPoint FVector @命中点
---@field ImpactNormal FVector @命中法线
---@field BulletHitTime number @子弹碰撞事件
---@field BulletLaunchTime number @子弹实际发射时间 必须大于Launch时间，用于作时间差验证 假设子弹是在服务器之后launch的
---@field BulletMovedDistance number @子弹飞行距离
FExplosionProjectileHitInfo = {}


---子弹的区分标识 在当前数据上报中，并没有区分单个ShootID中多次上报的数据 对于散弹和多次穿透后的情况，如果要对子弹瞬击的情况进行验证必须区分，所以添加这个校验
---@class FBulletID
---@field PelletID number @子弹在单次射击中的Pellet 虽然原数据是Int32但是当前不会有单ShootID射击超过255的情况 暂时使用int8
---@field DataID number @数据计数ID
FBulletID = {}
