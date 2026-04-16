---@meta

---@class FFieldLogicOverlapActor
---@field Actor AActor @Actor that the check hit.
---@field Component UPrimitiveComponent @PrimitiveComponent that the check hit.
FFieldLogicOverlapActor = {}


---@class FFieldLogicOneContext
---@field SampleActor FFieldLogicOverlapActor
FFieldLogicOneContext = {}


---@class FFieldLogicContext
---@field SampleActors ULuaArrayHelper<FFieldLogicOneContext>
FFieldLogicContext = {}
