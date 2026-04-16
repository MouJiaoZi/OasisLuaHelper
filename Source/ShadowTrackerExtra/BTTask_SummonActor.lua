---@meta

---@class UBTTask_SummonActor: UBTTaskNode
---@field SummonActorClass AActor
---@field SummonNum number
---@field MaxSummonNum number
---@field bUseSummonPoint boolean
---@field QueryObjectType ULuaArrayHelper<EObjectTypeQuery>
---@field SphereRadius number
---@field SummonLocationClass AActor
---@field OffsetMax FVector
---@field OffsetMin FVector
local UBTTask_SummonActor = {}

---@param Invoker AActor
function UBTTask_SummonActor:GetSummonLocations(Invoker) end
