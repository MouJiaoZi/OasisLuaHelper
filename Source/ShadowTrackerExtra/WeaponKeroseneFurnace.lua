---@meta

---煤油灯
---@class AWeaponKeroseneFurnace: ASTExtraWeapon
---@field KeroseneFurnaceEffectClass AActor
local AWeaponKeroseneFurnace = {}

function AWeaponKeroseneFurnace:OnRep_KeroseneFurnaceEffectActor() end

function AWeaponKeroseneFurnace:CreateEffect() end

function AWeaponKeroseneFurnace:ServerStarUse() end

function AWeaponKeroseneFurnace:StartUse() end

function AWeaponKeroseneFurnace:StopPhysics() end

function AWeaponKeroseneFurnace:BindVehicle() end

---@param InTargetVehicle ASTExtraVehicleBase
function AWeaponKeroseneFurnace:OnInVehcicle(InTargetVehicle) end

---@param InTargetVehicle ASTExtraVehicleBase
function AWeaponKeroseneFurnace:OnOutVehcicle(InTargetVehicle) end

---@param BIn boolean
---@param InTargetVehicle ASTExtraVehicleBase
function AWeaponKeroseneFurnace:OnInOutVehicle(BIn, InTargetVehicle) end

---@param BMutex boolean
function AWeaponKeroseneFurnace:SetEffectMutex(BMutex) end
