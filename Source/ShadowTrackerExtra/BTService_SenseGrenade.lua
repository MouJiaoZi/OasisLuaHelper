---@meta

---@class EAISenseGrenadeType
---@field ExplosionGrenade number @破片手榴弹
---@field BurningGrenade number @燃烧瓶
---@field SmokingGrenade number @烟雾弹
---@field FlashBomb number @震爆弹
---@field Grenade_MaxNum number @最大值
EAISenseGrenadeType = {}


---@class FAISenseGrenadeBBKeyInfo
---@field GrenadeType EAISenseGrenadeType
---@field BBKeyGrenadeActor any
FAISenseGrenadeBBKeyInfo = {}


---@class FBPAISenseGrenadeDistanceConfig
---@field GrenadeType EAISenseGrenadeType
---@field GrenadeSenseDistance number
FBPAISenseGrenadeDistanceConfig = {}


---@class FBTAISenseGrenadeMemory
---@field GrenadeSensedDistance ULuaMapHelper<EAISenseGrenadeType, number>
---@field GrenadeSensedDistanceSquared ULuaMapHelper<EAISenseGrenadeType, number>
---@field fMaxSenseDistance number
---@field GrenadeBBKeyInfo ULuaMapHelper<EAISenseGrenadeType, FAISenseGrenadeBBKeyInfo>
---@field GrenadeClassesMap ULuaMapHelper<UClass, EAISenseGrenadeType>
FBTAISenseGrenadeMemory = {}


---感知手雷
---@class UBTService_SenseGrenade: UBTService
---@field GrenadeSenseEnable ULuaMapHelper<EAISenseGrenadeType, boolean>
---@field SenseDistanceConfig ULuaArrayHelper<FBPAISenseGrenadeDistanceConfig>
---@field GrenadeBBKeyConfig ULuaArrayHelper<FAISenseGrenadeBBKeyInfo>
---@field GrenadeCollisionChannels ULuaArrayHelper<ECollisionChannel>
---@field BBKeyHasBeenFlashed any
---@field FlashBombBuffName string
---@field BBKeyHasSensedGrenade any
---@field StopVelocityThreshold number
---@field ProjFragTag string
---@field ProjStunTag string
---@field ProjBurnTag string
---@field ProjSmokeTag string
local UBTService_SenseGrenade = {}
