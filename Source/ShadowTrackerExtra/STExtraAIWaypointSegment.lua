---@meta

---@class FPathPoint
---@field InputKey number
FPathPoint = {}


---@class FPathInputPlayZoneDistanceQuery
---@field ForwardDistance number
---@field bForwardQueryMade boolean
---@field ReverseDistance number
---@field bReverseQueryMade boolean
FPathInputPlayZoneDistanceQuery = {}


---@class FWaypointNetworkConnection
---@field WaypointIndex number
---@field bPathSegmentInReverse boolean
FWaypointNetworkConnection = {}


---@class FWaypointNetworkConnectionList
---@field Connections ULuaArrayHelper<FWaypointNetworkConnection>
FWaypointNetworkConnectionList = {}


---@class FNodeTargetSpeedOverrides
---@field ForwardTargetSpeedOverride number
---@field ForwardMaxSpeedOverride number
---@field ReverseTargetSpeedOverride number
---@field ReverseMaxSpeedOverride number
FNodeTargetSpeedOverrides = {}


---@class ASTExtraAIWaypointSegment: AActor
---@field bEnabled boolean
---@field bAlwaysDrawDebug boolean
---@field ConnectedSegments ULuaMapHelper<number, FWaypointNetworkConnectionList>
---@field TargetSpeedOverridesMap ULuaMapHelper<number, FNodeTargetSpeedOverrides>
---@field PawnsOnForwardPath ULuaArrayHelper<APawn>
---@field PawnsOnReversePath ULuaArrayHelper<APawn>
local ASTExtraAIWaypointSegment = {}

---@param DrawTime number
function ASTExtraAIWaypointSegment:DrawDebug(DrawTime) end
