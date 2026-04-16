---@meta

---@class ULobbyModelBulletShowEntity: ULobbyModelShowEntity
---@field MemberTimerHandle FTimerHandle
---@field AudioEventID number
---@field CurSeq ULevelSequence
local ULobbyModelBulletShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelBulletShowEntity:ShowModel(battleItemHandleBase) end

function ULobbyModelBulletShowEntity:ClearEntity() end

function ULobbyModelBulletShowEntity:ApplyBulletMaterial() end

function ULobbyModelBulletShowEntity:PlayBulletExplosionParticle() end

function ULobbyModelBulletShowEntity:ReplayBulletExplosionParticle() end

function ULobbyModelBulletShowEntity:StopBulletExplosionParticle() end

function ULobbyModelBulletShowEntity:PlayTrailSeq() end

function ULobbyModelBulletShowEntity:StopTrailSeq() end

function ULobbyModelBulletShowEntity:TrailSeqEnd() end
