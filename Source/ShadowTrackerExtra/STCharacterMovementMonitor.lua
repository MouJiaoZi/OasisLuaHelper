---@meta

---@class USTCharacterMovementMonitor: UObject
---@field Monitors ULuaArrayHelper<USTCharacterMovementMonitorBase>
local USTCharacterMovementMonitor = {}

---@param Damage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@return boolean
function USTCharacterMovementMonitor:ShouldTakeFallingDamage(Damage, EventInstigator, DamageCauser) end
