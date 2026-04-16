---@meta

---@class FSingleSplineData
---@field SocketName string
---@field StartLocationOffest FVector
---@field LengthPerPiece number
---@field FinishedTime number
FSingleSplineData = {}


---@class AAlculaActor: ALaunchGuideActor
---@field SplineDataArray ULuaArrayHelper<FSingleSplineData>
---@field bIsRemoveAllRopeWhenReachDistLimit boolean
local AAlculaActor = {}
