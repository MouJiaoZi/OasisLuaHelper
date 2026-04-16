---@meta

---@class EPriorityChooseTargetType
---@field PCTT_Player number @玩家
---@field PCTT_Vehicle number @载具
---@field PCTT_Building number @召唤物
---@field PCTT_Projectile number @投掷物
---@field PCTT_Monster number @怪物
EPriorityChooseTargetType = {}


---@class FPriorityChooseTargetViewInfo
---@field ViewDistanceRange FVector2D
---@field ViewAngleYaw number
---@field ViewAnglePitch number
---@field ViewPriorityBase number
FPriorityChooseTargetViewInfo = {}


---@class FPriorityChooseTargetSortItem
FPriorityChooseTargetSortItem = {}


---@class FPriorityChooseTargetTraceOffset
---@field TargetClass AActor
---@field TargetTraceOffset FVector
FPriorityChooseTargetTraceOffset = {}


---@class UPriorityChooseTargetConfig: UObject
---@field PCTT EPriorityChooseTargetType
local UPriorityChooseTargetConfig = {}


---@class UPriorityChooseTargetConfig_Player: UPriorityChooseTargetConfig
---@field HealthyPlayerPriority number
---@field bCanChooseNearDeathPlayer boolean
---@field NearDeathPlayerPriority number
local UPriorityChooseTargetConfig_Player = {}


---@class UPriorityChooseTargetConfig_Vehicle: UPriorityChooseTargetConfig
---@field VehicleTypePriorityMap ULuaMapHelper<ESTExtraVehicleType, number>
---@field bChooseBrokenVehicle boolean
local UPriorityChooseTargetConfig_Vehicle = {}


---@class UPriorityChooseTargetConfig_Building: UPriorityChooseTargetConfig
---@field TurretBuildingPriority number
---@field TurretBuildingClass ASTBuildingActorBase
local UPriorityChooseTargetConfig_Building = {}


---@class UPriorityChooseTargetConfig_Projectile: UPriorityChooseTargetConfig
---@field LandMinePriority number
---@field LandMineClass AEliteProjectile
local UPriorityChooseTargetConfig_Projectile = {}


---@class UPriorityChooseTargetConfig_Monster: UPriorityChooseTargetConfig
---@field BaseCharacterPriority number
---@field SimpleCharacterPriority number
local UPriorityChooseTargetConfig_Monster = {}


---AI基于优先级选择目标组件
---@class UAIPriorityChooseTargetComponent: UAIAbilityComponent
---@field ViewInfoConfig ULuaArrayHelper<FPriorityChooseTargetViewInfo>
---@field LockOnTargetTime number
---@field bLockOnTargetCheckInViewRange boolean
---@field bLockOnTargetCheckVisibile boolean
---@field bIgnoreAIMonster boolean
---@field bIgnoreParentCheckVisible boolean
---@field VisibilityTraceChannel ECollisionChannel
---@field VisibilityTraceOwnerOffset FVector
---@field VisibilityTraceTargetOffset FVector
---@field VisibilityTraceTargetOffsetOverride ULuaArrayHelper<FPriorityChooseTargetTraceOffset>
---@field PriorityChooseConfig ULuaArrayHelper<UPriorityChooseTargetConfig>
---@field TargetPriorityList ULuaArrayHelper<FPriorityChooseTargetSortItem>
local UAIPriorityChooseTargetComponent = {}
