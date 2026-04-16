---@meta

---红包枪组件
---@class URedEnvelopeWeaponComponent: UWeaponLogicBaseComponent
---@field bEnableGetEnvelope boolean
---@field RedEnvelopeID FItemDefineID
---@field MaxShootNumToGetRedEnvelope number
---@field RedEnvelopeEffectSocket string
---@field RedEnvelopeEffectTemplate UParticleSystem
---@field RedEnvelopeEffectRotator FRotator
local URedEnvelopeWeaponComponent = {}

function URedEnvelopeWeaponComponent:HandleWeaponShoot() end

function URedEnvelopeWeaponComponent:RPC_Server_AddRedEnvelopeItem() end

function URedEnvelopeWeaponComponent:RPC_Multicast_GetRedEnvelopeItem() end
