---@meta

---@class ULobbyModelCommonItemShowEntity: ULobbyModelShowEntity
---@field Socket2MeshComponentMap ULuaMapHelper<string, UMeshComponent>
local ULobbyModelCommonItemShowEntity = {}

---@param showActor ALobbyItemShowActor
function ULobbyModelCommonItemShowEntity:Init(showActor) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelCommonItemShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param fatherComp USceneComponent
---@param fatherEntity ULobbyModelShowEntity
---@param SocketName string
function ULobbyModelCommonItemShowEntity:ApplyMeshComp(battleItemHandleBase, fatherComp, fatherEntity, SocketName) end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelCommonItemShowEntity:ApplyAnimInstance(battleItemHandleBase) end

---@param animPath string
---@param animType number
function ULobbyModelCommonItemShowEntity:PlayItemMontage(animPath, animType) end

---@param animPath string
---@param animType number
---@return number
function ULobbyModelCommonItemShowEntity:PlayAnimOrMontage(animPath, animType) end

---@param montage UAnimMontage
---@return number
function ULobbyModelCommonItemShowEntity:PlayMontage(montage) end

function ULobbyModelCommonItemShowEntity:StopAllMontage() end

---@param resID number
---@return boolean
function ULobbyModelCommonItemShowEntity:CanPutOnComponent(resID) end

function ULobbyModelCommonItemShowEntity:ClearEntity() end

---@param battleItemHandleBase UBattleItemHandleBase
---@param MeshComp UMeshComponent
function ULobbyModelCommonItemShowEntity:ApplyMateriaByHandle(battleItemHandleBase, MeshComp) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param fatherComp USceneComponent
function ULobbyModelCommonItemShowEntity:ApplyParticleEffect(battleItemHandleBase, fatherComp) end

---@param battleItemHandleBase UBattleItemHandleBase
---@return number
function ULobbyModelCommonItemShowEntity:GetSlotID(battleItemHandleBase) end
