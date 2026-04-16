---@meta

---@class ULobbyModelADSShowEntity: ULobbyModelShowEntity
---@field MemberTimerHandle FTimerHandle
---@field AudioEventID number
---@field DefaultParticleComponentList ULuaArrayHelper<UParticleSystemComponent>
local ULobbyModelADSShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelADSShowEntity:ShowModel(battleItemHandleBase) end

function ULobbyModelADSShowEntity:ClearEntity() end

function ULobbyModelADSShowEntity:ApplyADSMaterial() end

function ULobbyModelADSShowEntity:ApplyDefaultParticle() end

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelADSShowEntity:ApplyAnimInstance(battleItemHandleBase) end

function ULobbyModelADSShowEntity:DoStopAllBehave() end

---@param behaveType EItemBehaviorType
---@param battleHandle UBattleItemHandleBase
---@param additionParams ULuaMapHelper<string, string>
---@return boolean
function ULobbyModelADSShowEntity:DoPlayBehave(behaveType, battleHandle, additionParams) end

---@param behaveType EItemBehaviorType
function ULobbyModelADSShowEntity:DoStopBehave(behaveType) end

function ULobbyModelADSShowEntity:PlayADSDestroyAnim() end

function ULobbyModelADSShowEntity:StopAnim() end

function ULobbyModelADSShowEntity:PlayADSSurroundingParticle() end

function ULobbyModelADSShowEntity:StopADSSurroundingParticle() end

function ULobbyModelADSShowEntity:PlayADSExplosionParticle() end

function ULobbyModelADSShowEntity:ReplayADSExplosionParticle() end

function ULobbyModelADSShowEntity:StopADSExplosionParticle() end
