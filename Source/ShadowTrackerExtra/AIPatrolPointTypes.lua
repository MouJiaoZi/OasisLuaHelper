---@meta

---@class EAIPatrolPointDebugLineShowType
---@field AIPatrolPointDebugLineShowNone number @ʾκ·
---@field AIPatrolPointDebugLineShowSelectedOnly number @ֻʾѡ·
---@field AIPatrolPointDebugLineShowAll number @ʾ·
EAIPatrolPointDebugLineShowType = {}


---@class FAIPatrolPointConnectData
---@field NextPointID number
---@field Weight number
FAIPatrolPointConnectData = {}


---@class FAIPatrolPointData
---@field PointID number
---@field bStartPoint boolean
---@field Location FVector
---@field Radius number
---@field Links ULuaArrayHelper<FAIPatrolPointConnectData>
FAIPatrolPointData = {}


---@class FAIPatrolPointDataList
---@field PatrolPointDataList ULuaArrayHelper<FAIPatrolPointData>
FAIPatrolPointDataList = {}


---@class FAIPatrolPointDataMap
---@field PatrolPointDataMap ULuaMapHelper<number, FAIPatrolPointData>
---@field StartPoints ULuaArrayHelper<number>
FAIPatrolPointDataMap = {}
