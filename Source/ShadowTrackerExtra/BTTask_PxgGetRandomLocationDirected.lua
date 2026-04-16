---@meta

---@class EDirection
---@field EDirection_Origin number
---@field EDirection_Forward number
---@field EDirection_Backward number
---@field EDirection_Right number
---@field EDirection_Left number
EDirection = {}


---定向获取随机点(FakePlayerAI|MobAI|HostAI)
---@class UBTTask_PxgGetRandomLocationDirected: UBTTaskNode
---@field DirectionTypes ULuaArrayHelper<EDirection>
---@field RadiusMin number
---@field RadiusMax number
---@field AlwaysSuccess boolean
---@field Distance number
---@field MovementDirection boolean
---@field HeightOffset number
---@field DirectMove boolean
---@field bTraceFloorBeforeProjectNavmesh boolean
---@field TraceFloorChannel ECollisionChannel
---@field ValidFloorLocZOffset number
---@field bTestHasPath boolean
---@field bEnsureTargetLocOnNavmesh boolean
---@field MaxSearchTime number @最大搜索次数
---@field DebugDrawPath boolean
---@field InOriginLoc any @原点位置
---@field OutTargetRandomLoc any @随机点位置
local UBTTask_PxgGetRandomLocationDirected = {}
