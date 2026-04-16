---@meta

---@class FInstanceMeshTransformData
---@field InstanceIndex number
---@field Location FVector
---@field Rotation FRotator
---@field Scale number
---@field LifeTime number
---@field Dirty number
FInstanceMeshTransformData = {}


---@class UInstanceMeshSpawner: UActorComponent
---@field Instances ULuaArrayHelper<FInstanceMeshTransformData>
---@field PrevInstances ULuaArrayHelper<FInstanceMeshTransformData>
local UInstanceMeshSpawner = {}

---@param Location FVector
---@param Rotation FRotator
---@param LifeSpan number
---@return number
function UInstanceMeshSpawner:AddInstance(Location, Rotation, LifeSpan) end

---@param Index number
---@param NewLoc FVector
---@param NewRot FRotator
---@param NewScale FVector
---@param LifeSpan number
function UInstanceMeshSpawner:UpdateInstance(Index, NewLoc, NewRot, NewScale, LifeSpan) end

---@param Proxy UInstancedStaticMeshComponent
function UInstanceMeshSpawner:SetInstanceMeshComponnet(Proxy) end

---@param Index number
---@param Prev FTransform
---@param New FTransform
function UInstanceMeshSpawner:OnInstanceUpdated(Index, Prev, New) end

function UInstanceMeshSpawner:OnRep_Instances() end
