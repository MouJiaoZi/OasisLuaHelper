---@meta

---@class AChannelBuoyActor: AUAENetActor
---@field TemplateSignalLightParticleSystem UParticleSystem
---@field bSignalLightOff boolean
---@field OnSignalLightOff FOnSignalLightOff
---@field MarkType number
---@field MarkInWhichMap EAddMarkFlag
local AChannelBuoyActor = {}

---@param PlayerKey number
function AChannelBuoyActor:OnSomeonePickItem(PlayerKey) end

function AChannelBuoyActor:OnRep_bSignalLightOff() end
