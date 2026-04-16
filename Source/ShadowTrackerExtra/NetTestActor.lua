---@meta

---@class FBloodCoreData1
---@field SpawnTime number
---@field Location FVector_NetQuantize
FBloodCoreData1 = {}


---@class ANetTestActor: AActor
---@field OpenFlow_ArrayNum number
---@field OpenFlowArrays ULuaArrayHelper<number>
---@field NetData ULuaArrayHelper<FBloodCoreData1>
local ANetTestActor = {}

---@return string
function ANetTestActor:GetLuaModule() end

function ANetTestActor:OnRep_OpenFlowArrays() end

---@param Arrays ULuaArrayHelper<number>
function ANetTestActor:ReliableClientRPC(Arrays) end

---@param PrevData ULuaArrayHelper<FBloodCoreData1>
function ANetTestActor:OnRep_NetData(PrevData) end
