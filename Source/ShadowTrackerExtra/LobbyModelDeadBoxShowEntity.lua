---@meta

---@class ULobbyModelDeadBoxShowEntity: ULobbyModelShowEntity
---@field CurDuration number
---@field MemberTimerHandle FTimerHandle
---@field DurableEffectHandle FTimerHandle
local ULobbyModelDeadBoxShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelDeadBoxShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param meshComp UMeshComponent
---@param matList ULuaArrayHelper<UMaterialInterface>
function ULobbyModelDeadBoxShowEntity:SetMeshAndMaterial(battleItemHandleBase, meshComp, matList) end

function ULobbyModelDeadBoxShowEntity:ReplayParticle() end

function ULobbyModelDeadBoxShowEntity:ClearEntity() end

---@param MeshPath string
---@param AnimBP string
---@param Anim string
function ULobbyModelDeadBoxShowEntity:SetDeadBoxMesh(MeshPath, AnimBP, Anim) end

---@param particleStr string
function ULobbyModelDeadBoxShowEntity:SetDeadBoxParticle(particleStr) end

---@param particleStr string
---@param CurTimer FTimerHandle
---@param SocketName string
---@param InTrans FTransform
function ULobbyModelDeadBoxShowEntity:SetDeadBoxParticleWithTimer(particleStr, CurTimer, SocketName, InTrans) end
