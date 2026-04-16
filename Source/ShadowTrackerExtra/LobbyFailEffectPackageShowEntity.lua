---@meta

---@class ULobbyFailEffectPackageShowEntity: ULobbyModelShowEntity
---@field DurableEffectHandle FTimerHandle
local ULobbyFailEffectPackageShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyFailEffectPackageShowEntity:ShowModel(battleItemHandleBase) end

---@param particleStr string
---@param CurTimer FTimerHandle
---@param SocketName string
---@param InTrans FTransform
function ULobbyFailEffectPackageShowEntity:SetDeadBoxParticleWithTimer(particleStr, CurTimer, SocketName, InTrans) end

function ULobbyFailEffectPackageShowEntity:ClearEntity() end

function ULobbyFailEffectPackageShowEntity:ReplayParticle() end
