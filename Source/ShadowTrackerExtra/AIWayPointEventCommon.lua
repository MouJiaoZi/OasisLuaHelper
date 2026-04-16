---@meta

---@class FRotateToWayPointRotationCache
FRotateToWayPointRotationCache = {}


---@class UAIWayPointEventEmpty: UAIWayPointEventBase
local UAIWayPointEventEmpty = {}


---@class UAIWayPointEvent_RotateToWayPointRotation: UAIWayPointEventBase
---@field InterpSpeed number @If InterpSpeed equals to 0, use the default rotating of AIController.
---@field Precision number @Success condition precision in degrees
---@field Caches ULuaMapHelper<UObject, FRotateToWayPointRotationCache>
local UAIWayPointEvent_RotateToWayPointRotation = {}


---@class UAIWayPointEvent_Wait: UAIWayPointEventBase
---@field bRandomWaitTime boolean @true: Fixed Time; false: Random Time.
---@field WaitTime number
---@field WaitTimeMin number
---@field WaitTimeMax number
---@field CacheRemainingWaitTimes ULuaMapHelper<UObject, number>
local UAIWayPointEvent_Wait = {}
