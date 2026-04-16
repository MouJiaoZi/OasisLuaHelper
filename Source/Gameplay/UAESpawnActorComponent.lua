---@meta

---@class EMonsterBornType
---@field EMonsterBornType_Burrow number @钻地
---@field EMonsterBornType_ClimbWall number @扒墙
---@field EMonsterBornType_Fall number @掉下
---@field EMonsterBornType_ProneToStand number @爬起
---@field EMonsterBornType_Garbage number @垃圾堆
---@field EMonsterBornType_BreakWall number @壁画和镜子
---@field EMonsterBornType_LyingOnTheGround number @一直躺在地上
---@field EMonsterBornType_Max number
EMonsterBornType = {}


---@class EActorSpawnType
---@field EStatic_Config number @静态表格配置
---@field EDynamic_Generator number @动态生成
---@field LevelEvent_Trrigger number @关卡事件生成
EActorSpawnType = {}


---@class FUAESpawnActorParam
---@field TemplateID number
---@field SpawnLocation FVector
---@field SpawnRotator FRotator
---@field SpawnOffsetLoc FVector
---@field CollisionHandling ESpawnActorCollisionHandlingMethod
---@field RandomRadius number
---@field RandomRotYaw boolean
---@field TraceAvoidClass ULuaArrayHelper<AActor>
---@field MakerName string
---@field IsTracePos boolean
---@field IsHalfCapsulePull boolean
---@field SpawnType EActorSpawnType
---@field FindFloorLocChannel ECollisionChannel
---@field ZTraceOffset number
---@field MonsterBornType number
---@field MonsterFrontBornType number
---@field FeatureSetType EFeatureSetType
FUAESpawnActorParam = {}


---@class UUAESpawnActorComponent: UActorComponent
local UUAESpawnActorComponent = {}

---@param InActor AActor
---@param TemplateID number
function UUAESpawnActorComponent:InitializeActor(InActor, TemplateID) end
