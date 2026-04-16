---@meta

---@class UBowEnergyAccumulateComponent: UEnergyAccumulateShootComponent
---@field MinAccTEnergyTime number
---@field MaxAccTEnergyTime number
---@field BowBulletImpactDamageMinEnergy number
---@field BowBulletImpactDamageMaxEnergy number
local UBowEnergyAccumulateComponent = {}

---@param FinalDeviation number
---@return number
function UBowEnergyAccumulateComponent:ModifyCalcShootRotFinalDeviation(FinalDeviation) end

---@return boolean
function UBowEnergyAccumulateComponent:IsEnoughEnergy() end
