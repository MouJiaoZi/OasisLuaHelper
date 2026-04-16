---@meta

---子弹命中SpawnActor
---@class FBulletHitActionEffect_Param
---@field HitInfo FHitResult
FBulletHitActionEffect_Param = {}


---@class FBulletHitActionSpawnActorOffset
---@field Class UObject
---@field OffsetDis number
FBulletHitActionSpawnActorOffset = {}


---@class UBulletHitActionEffect_SpawnActor: UBulletHitActionEffectBase
---@field SpawnActorClass AActor
---@field NormalOffsetDis number
---@field OverrideNormalOffsetDis ULuaArrayHelper<FBulletHitActionSpawnActorOffset>
---@field CustomFuncName string
---@field bIgnoreTeammate boolean
---@field bIgnoreSameCamp boolean
local UBulletHitActionEffect_SpawnActor = {}
