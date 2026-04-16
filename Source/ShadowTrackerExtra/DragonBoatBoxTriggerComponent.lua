---@meta

---@class UDragonBoatBoxTriggerComponent: UBoxComponent
---@field PathNodeType DragonBoatPathNodeType
---@field Group number
---@field index number
---@field normalEffectArray ULuaArrayHelper<UParticleSystemComponent>
local UDragonBoatBoxTriggerComponent = {}

---@param OtherActor AActor
function UDragonBoatBoxTriggerComponent:OnTriggerEnter(OtherActor) end

---@param OtherActor AActor
function UDragonBoatBoxTriggerComponent:OnTriggerExit(OtherActor) end

---@param effect UParticleSystemComponent
function UDragonBoatBoxTriggerComponent:SetEffect(effect) end
