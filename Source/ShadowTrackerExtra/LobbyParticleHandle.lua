---@meta

---@class FSingleParticleInfo
---@field ParticleRes UParticleSystem
---@field AttachSocket string
---@field OffsetTrans FTransform
---@field ExtraTime number
FSingleParticleInfo = {}


---@class FParticleAudioInfo
---@field ShowParticle UParticleSystem
---@field ShowAudio UAkAudioEvent
---@field IsReplay boolean
---@field ReplayDuration number
FParticleAudioInfo = {}


---@class ULobbyParticleHandle: UBattleItemHandleBase
---@field ParticleList ULuaArrayHelper<FSingleParticleInfo>
---@field bCanOverrideOtherParticle boolean
---@field ParticleAudioList ULuaMapHelper<number, FParticleAudioInfo>
local ULobbyParticleHandle = {}
