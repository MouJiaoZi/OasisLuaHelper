---@meta

---@class FAIDynamicWayPointLink
---@field NextTag string
---@field Weight number
FAIDynamicWayPointLink = {}


---@class AAIDynamicWayPointActor: AAIWayPointActor
---@field Tag string
---@field Links ULuaArrayHelper<FAIDynamicWayPointLink>
---@field bIsActive boolean
---@field Next ULuaArrayHelper<AAIDynamicWayPointActor>
local AAIDynamicWayPointActor = {}
