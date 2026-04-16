---@meta

---@class EAIWayPointDebugLineShowTeam
---@field AIWayPointDebugLineShowTeam1 number @Team1
---@field AIWayPointDebugLineShowTeam2 number @Team2
---@field AIWayPointDebugLineShowTeamOther number @其它Team
---@field AIWayPointDebugLineShowTeamAll number @所有Team
EAIWayPointDebugLineShowTeam = {}


---@class EAIWayPointDebugLineShowType
---@field AIWayPointDebugLineShowNone number @不显示任何路点
---@field AIWayPointDebugLineShowSelectedOnly number @只显示选择的路点
---@field AIWayPointDebugLineShowAll number @显示所有路点
EAIWayPointDebugLineShowType = {}


---@class FWayPointLink
---@field NextPointID number
---@field Weight number
FWayPointLink = {}


---@class FTeamWayPointLink
---@field TeamID number
---@field Links ULuaArrayHelper<FWayPointLink>
FTeamWayPointLink = {}


---@class AAIWayPointActor: AActor
---@field ID number
---@field TeamLinks ULuaArrayHelper<FTeamWayPointLink>
local AAIWayPointActor = {}
