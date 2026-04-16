---@meta

---@class UShovelHurtCapsuleComponent: UCapsuleComponent
local UShovelHurtCapsuleComponent = {}

---@param OtherActor AActor
function UShovelHurtCapsuleComponent:OnTriggerEnter(OtherActor) end

---@param OtherActor AActor
function UShovelHurtCapsuleComponent:OnTriggerEnterImpl(OtherActor) end

---@param OtherActor AActor
function UShovelHurtCapsuleComponent:OnTriggerExit(OtherActor) end

---@param OtherActor AActor
function UShovelHurtCapsuleComponent:OnTriggerExitImpl(OtherActor) end
