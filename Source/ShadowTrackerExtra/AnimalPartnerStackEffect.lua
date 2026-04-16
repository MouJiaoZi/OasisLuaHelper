---@meta

---@class UAnimalPartnerStackEffect: UPersistEffectWithState
---@field MaxStackTime number
---@field InterruptStackPlayerDistance number
---@field LastStackTime number
local UAnimalPartnerStackEffect = {}

function UAnimalPartnerStackEffect:GetAllEffectsAlongStack() end

function UAnimalPartnerStackEffect:StackOnPrevAnimal() end

function UAnimalPartnerStackEffect:OnRep_PrevAnimal() end

function UAnimalPartnerStackEffect:OnRep_PostAnimal() end

function UAnimalPartnerStackEffect:TickInterruptAnimalStack() end
