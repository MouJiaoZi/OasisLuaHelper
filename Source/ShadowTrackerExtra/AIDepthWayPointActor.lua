---@meta

---路点与下一深度路点相连信息
---@class FDepthWayPointLinkData
---@field LinkTag string @相连的Tag
---@field Weight number @权重
FDepthWayPointLinkData = {}


---路点与上一层、下一层路点相连信息
---@class FDepthWayPointLink
---@field Depth number
---@field LinkTags ULuaArrayHelper<string>
---@field Links ULuaArrayHelper<FDepthWayPointLinkData>
---@field InverseLinks ULuaArrayHelper<FDepthWayPointLinkData>
FDepthWayPointLink = {}


---@class AAIDepthWayPointActor: AAIWayPointActor
---@field bSpecialPointType boolean
---@field AIType number
---@field DepthWayPointLink FDepthWayPointLink
---@field bIsActive boolean
local AAIDepthWayPointActor = {}
