---@meta

---@class FAction_DestroyActorTag
---@field Tag string
---@field Reason KilledReason
FAction_DestroyActorTag = {}


---@class FAction_PendDestroyActor
FAction_PendDestroyActor = {}


---@class FActorHealthSegment
---@field MinRatio number
---@field MaxRatio number
FActorHealthSegment = {}


---@class UTriggerAction_DestroyActor: UTriggerAction
---@field TagForRemoveActorList ULuaArrayHelper<FAction_DestroyActorTag>
---@field DestroyNumPerFrame number
---@field bDestoryByHealth boolean @是否按血量退场
---@field bCanDelNormalActor boolean @是否可以删普通actor
---@field ActorHealthSegmentList ULuaArrayHelper<FActorHealthSegment> @在僵尸退场时，配置退场僵尸血量范围
---@field DestoryByHealthActorsCD number @在僵尸退场时，配置每次按血量范围退场时间间隔
---@field AllPendingActors ULuaArrayHelper<FAction_PendDestroyActor>
---@field DestoryByHealthActors ULuaArrayHelper<FAction_PendDestroyActor>
local UTriggerAction_DestroyActor = {}
