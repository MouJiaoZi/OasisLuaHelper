---@meta

---@class EBattleFieldEnemyType
---@field BFET_Player number @玩家
---@field BFET_Vehicle number @载具
EBattleFieldEnemyType = {}


---@class FAIFightingPositionData
FAIFightingPositionData = {}


---@class FBattleFieldShootConfigData
FBattleFieldShootConfigData = {}


---@class FBattleFieldFindEnemySortItem
FBattleFieldFindEnemySortItem = {}


---@class FBattleFieldThreatConfig
---@field FindEnemyDistanceRange number
---@field bSectorView boolean
---@field ViewDistanceRange number
---@field InViewScore number
---@field SoundScoreRange number
---@field CloseDistanceRange FVector2D
---@field AttackedByEnemy number
---@field ViewAngleYaw number
---@field BattleFieldThreatSoures ULuaMapHelper<EBattleFieldEnemyType, UBattleFieldThreatSoure>
FBattleFieldThreatConfig = {}


---@class UBattleFieldThreatSoure: UObject
local UBattleFieldThreatSoure = {}


---@class UBattleFieldThreatSoure_Player: UBattleFieldThreatSoure
---@field ChoosePlayerScore number
---@field ChooseNearDeathPlayerScore number
---@field ChooseAIScore number
local UBattleFieldThreatSoure_Player = {}


---@class UBattleFieldThreatSoure_Vehicle: UBattleFieldThreatSoure
---@field VehicleTypePriorityMap ULuaMapHelper<ESTExtraVehicleType, number>
local UBattleFieldThreatSoure_Vehicle = {}


---大战场寻敌组件 基于听觉，视觉等感觉信息寻敌 全局ai寻敌结果互通
---@class UAIFindEnemyBySenseComponent: UActorComponent
---@field MaxEnemyNumPerPlyer number
---@field MaxFindWayTime number
---@field BFAIShootConfig string
---@field bUseDifficultyLevel boolean
---@field bDebugFindFightingPoint boolean
---@field bUseAggressiveness boolean
---@field BattleFieldThreatConfigMap ULuaMapHelper<number, FBattleFieldThreatConfig>
---@field TraceStartOffset FVector
---@field TraceEndOffset FVector
local UAIFindEnemyBySenseComponent = {}

---@param PlayerKey number
function UAIFindEnemyBySenseComponent:ClearFightingPosition(PlayerKey) end
