---@meta

---@class ULobbyModelWeaponPendantShowEntity: UCommonLobbyModelShowEntity
local ULobbyModelWeaponPendantShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelWeaponPendantShowEntity:ShowModel(battleItemHandleBase) end

---@param battleItemHandleBase UBattleItemHandleBase
---@param fatherComp USceneComponent
---@param fatherEntity ULobbyModelShowEntity
---@param SocketName string
function ULobbyModelWeaponPendantShowEntity:ApplyMeshComp(battleItemHandleBase, fatherComp, fatherEntity, SocketName) end
