---@meta

---@class ULobbyModelAirdroppedSuppliesShowEntity: ULobbyModelShowEntity
---@field ExtraMeshComponents ULuaArrayHelper<UMeshComponent>
local ULobbyModelAirdroppedSuppliesShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelAirdroppedSuppliesShowEntity:ShowModel(battleItemHandleBase) end

function ULobbyModelAirdroppedSuppliesShowEntity:ClearEntity() end

---@param meshComp UMeshComponent
---@param MeshCfg FHandleMeshCfg
function ULobbyModelAirdroppedSuppliesShowEntity:ApplyMeshAndMatertial(meshComp, MeshCfg) end

---@param meshComp UMeshComponent
---@param MeshCfg FAirdroppedParticleAndAudio
function ULobbyModelAirdroppedSuppliesShowEntity:ApplyParticlesAndAudio(meshComp, MeshCfg) end

---@param meshComp UMeshComponent
---@param MeshCfg FHandleMeshCfg
function ULobbyModelAirdroppedSuppliesShowEntity:PlayIdleMontage(meshComp, MeshCfg) end
