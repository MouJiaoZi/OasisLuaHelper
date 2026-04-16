---@meta

---@class FTaskAreaData
---@field TaskAreaType number
---@field TaskAreaAnchorsStr string
FTaskAreaData = {}


---@class ATaskAreaDefineActor: AActor
---@field TaskAreaDatas ULuaArrayHelper<FTaskAreaData> @Task area data array which is initialized in BP construct script event
---@field TaskAreaType ETaskTriggerAreaType @Task area type
---@field TaskAreaAnchors ULuaArrayHelper<FVector> @Area anchor points which can construct a convex polygon area
---@field PlayerLocation FVector @Simulated player location
---@field Points ULuaArrayHelper<FVector> @Points for debug drawing
local ATaskAreaDefineActor = {}
