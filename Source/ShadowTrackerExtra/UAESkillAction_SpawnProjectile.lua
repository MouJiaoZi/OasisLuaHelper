---@meta

---@class ESpawnProjectileType
---@field Linear number
---@field Ring number
---@field Fan number
ESpawnProjectileType = {}


---@class FSkillAction_SpawnProjectileRingData
---@field Radius number
FSkillAction_SpawnProjectileRingData = {}


---@class FSkillAction_SpawnProjectileFanData
---@field FanRadius number
---@field FanAngle number
---@field ProjectileNum number
FSkillAction_SpawnProjectileFanData = {}


---@class FSkillAction_SpawnProjectileCreateData
---@field ProjectileTemplate AActor
---@field OffsetLocation FVector
---@field OffsetRotation FRotator
---@field SpawnType ESpawnProjectileType
---@field ProjectileNum number
---@field RingData FSkillAction_SpawnProjectileRingData
---@field FanData FSkillAction_SpawnProjectileFanData
---@field bUseViewRotation boolean
---@field bCanMultiple boolean
---@field bRingType boolean
FSkillAction_SpawnProjectileCreateData = {}


---@class UUAESkillAction_SpawnProjectile: UUAESkillAction
---@field SpawnProjectileData FSkillAction_SpawnProjectileCreateData
local UUAESkillAction_SpawnProjectile = {}
