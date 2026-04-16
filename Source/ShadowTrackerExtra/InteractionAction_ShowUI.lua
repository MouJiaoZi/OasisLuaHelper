---@meta

---@class UInteractionAction_ShowUI: UInteractionAction
---@field ShowButtonID number
---@field DestinUIInfo FShowUIDataUIInfo
---@field ShowUIDataConfigList ULuaArrayHelper<FShowUIDataConfig>
---@field ActiveParticle UParticleSystem
---@field ParticleTransform FTransform
---@field CloseUINeedDestroyParticle boolean
local UInteractionAction_ShowUI = {}
