---@meta

---@class FMeshInfo
FMeshInfo = {}


---@class UAnimNotifyState_TimedLobbyActor: UAnimNotifyState
---@field MeshData ULuaMapHelper<string, FMeshInfo>
---@field SocketName string
---@field TransformOffset FTransform
---@field ActorTag string
---@field SpawnedActorCached ULuaMapHelper<string, AActor>
local UAnimNotifyState_TimedLobbyActor = {}

---@param obj UObject
---@param tempstMesh UStaticMesh
---@param tempMaterial UMaterialInterface
---@param tempSocketName string
---@param tempTransformOffset FTransform
function UAnimNotifyState_TimedLobbyActor:InsertDataInfo(obj, tempstMesh, tempMaterial, tempSocketName, tempTransformOffset) end

---@param obj UObject
function UAnimNotifyState_TimedLobbyActor:RemoveDataInfo(obj) end
