---@meta

---@class eBattleFieldMode
---@field Breakthrough number
---@field ConquestMode number
eBattleFieldMode = {}


---@class FHardPointParams
---@field AttackerWeight number
---@field DefenderWeight number
---@field AttackerReverseWeight number
---@field DefenderReverseWeight number
---@field OnlyEnemyHardPointWeight number
FHardPointParams = {}


---大战场寻找前往目标据点
---@class UBTService_BattleField_OccupyHandler: UBTService
---@field OutCurOccupyPointActor any @当前激活的占点黑板变量
---@field OutHardPointDepthKey any
---@field OutIsOccupying any @是否在占据中黑板变量
---@field OutIsRefreshOccupyInfo any @是否刷新占点信息
---@field ChooseHardPointProbability number
---@field MaxRefreshHardPointCD number
---@field MinRefreshHardPointCD number
---@field OccupyAIType number
---@field AttackerCampId number
---@field NeutralHardPointType number
---@field BattleFieldMode eBattleFieldMode
---@field FivePointConquestHardPointParams ULuaMapHelper<number, FHardPointParams>
---@field ThreePointConquestHardPointParams ULuaMapHelper<number, FHardPointParams>
---@field InGameModeType any @是否在占据中黑板变量
---@field bDebugDraw boolean
---@field CacheHardPointActors ULuaArrayHelper<AActor>
local UBTService_BattleField_OccupyHandler = {}
