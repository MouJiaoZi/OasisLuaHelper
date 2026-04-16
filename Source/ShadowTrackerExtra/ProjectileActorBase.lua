---@meta

---@class AProjectileActorBase: AUAERegionActor, IDamageableInterface
---@field MeshComponentSelector FActorComponentSelector
local AProjectileActorBase = {}

---@return boolean
function AProjectileActorBase:GetCanBePicked_BP() end

---@return number
function AProjectileActorBase:GetBeVehicleDamageSpeed_BP() end

---@return number
function AProjectileActorBase:GetBeVehicleDamagedCoefficient_BP() end
