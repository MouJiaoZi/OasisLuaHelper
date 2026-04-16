---@meta

---@class AMapMarkParticleActor: AActor
---@field MaxDistance number
---@field MinDistance number
---@field MaxSize number
---@field MinSize number
local AMapMarkParticleActor = {}

---@param bShow boolean
---@param MapMarkIndex number
---@param MapMarkWorldLocation FVector4
function AMapMarkParticleActor:Initialize(bShow, MapMarkIndex, MapMarkWorldLocation) end

function AMapMarkParticleActor:ModifyParticleSize() end

---@return number
function AMapMarkParticleActor:CalcuteParticleSize() end

function AMapMarkParticleActor:DestroyMarkActor() end
