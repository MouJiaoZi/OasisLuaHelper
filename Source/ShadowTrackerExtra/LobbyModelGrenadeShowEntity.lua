---@meta

---@class ULobbyModelGrenadeShowEntity: ULobbyModelShowEntity
---@field AudioEventID number
---@field CurSeq ULevelSequence
---@field MemberTimerHandle FTimerHandle
local ULobbyModelGrenadeShowEntity = {}

---@param battleItemHandleBase UBattleItemHandleBase
function ULobbyModelGrenadeShowEntity:ShowModel(battleItemHandleBase) end

---@param particleStr string
---@param AddTime number
function ULobbyModelGrenadeShowEntity:ShowParticle(particleStr, AddTime) end

function ULobbyModelGrenadeShowEntity:ReplayParticle() end

function ULobbyModelGrenadeShowEntity:ClearEntity() end

function ULobbyModelGrenadeShowEntity:StopParticle() end

function ULobbyModelGrenadeShowEntity:PlayGrenadeParticle() end

---@param AudioPath string
function ULobbyModelGrenadeShowEntity:PlayParticleAudio(AudioPath) end

---@param ParticleName string
---@param AddTime number
---@return string
function ULobbyModelGrenadeShowEntity:GetParticlePath(ParticleName, AddTime) end

---@param AudioName string
---@return string
function ULobbyModelGrenadeShowEntity:GetAudioPath(AudioName) end

function ULobbyModelGrenadeShowEntity:PlayTrailSeq() end

function ULobbyModelGrenadeShowEntity:StopTrailSeq() end

function ULobbyModelGrenadeShowEntity:TrailSeqEnd() end
