---@meta

---@class EAIWayPointEventType
---@field ExecuteInLua number
---@field ExecuteInBTTask number
EAIWayPointEventType = {}


---@class FWayPointEvent
---@field EventID string @If EventID is not needed, set EventID to empty.
---@field EventType EAIWayPointEventType @Contains Event Parameters.
---@field Weight number @If Weight <= 0, this Event will be ignored.
FWayPointEvent = {}


---@class FWayPointRandomEvent
---@field RandomEvents ULuaArrayHelper<FWayPointEvent>
FWayPointRandomEvent = {}


---@class FWayPointEvents
---@field EventsList ULuaArrayHelper<FWayPointRandomEvent>
FWayPointEvents = {}


---@class AAIEventWayPointActor: AAIWayPointActor
---@field Events FWayPointEvents
---@field bRotatePawnOnReached boolean @True: Will rotate the pawn to the direction of this Waypoint when the pawn reached this Waypoint. Should use the "BTTask_GeneralExecuteEventsOfWayPoint" task after "MoveTo" task to Perform this rotation.
local AAIEventWayPointActor = {}
