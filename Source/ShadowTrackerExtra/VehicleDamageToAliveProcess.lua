---@meta

---@class UUGCVehicleDamageToAliveProcess: UObject
local UUGCVehicleDamageToAliveProcess = {}

---@param Vehicle ASTExtraVehicleBase
---@param character AActor
---@param DamageCom UVehicleDamageComponent
---@return number
function UUGCVehicleDamageToAliveProcess:CalHitDamage(Vehicle, character, DamageCom) end

---@param Vehicle ASTExtraVehicleBase
---@param character AActor
---@param DamageCom UVehicleDamageComponent
---@param fDamage number
---@return boolean
function UUGCVehicleDamageToAliveProcess:ShouldCauseDamage(Vehicle, character, DamageCom, fDamage) end

---@param Vehicle ASTExtraVehicleBase
---@param character AActor
---@param DamageCom UVehicleDamageComponent
---@param hitDamage number
function UUGCVehicleDamageToAliveProcess:TakeDamage(Vehicle, character, DamageCom, hitDamage) end

---@param Vehicle ASTExtraVehicleBase
---@param character AActor
---@param DamageCom UVehicleDamageComponent
function UUGCVehicleDamageToAliveProcess:ApplyImpluse(Vehicle, character, DamageCom) end

---@param Vehicle ASTExtraVehicleBase
---@param character AActor
---@param DamageCom UVehicleDamageComponent
---@return boolean
function UUGCVehicleDamageToAliveProcess:CannotHurt(Vehicle, character, DamageCom) end

---@return number
function UUGCVehicleDamageToAliveProcess:CalHitVelocity() end

---@param Vehicle ASTExtraVehicleBase
---@param character AActor
---@param DamageCom UVehicleDamageComponent
---@param Hit FHitResult
---@return boolean
function UUGCVehicleDamageToAliveProcess:CheckVaild(Vehicle, character, DamageCom, Hit) end


---@class UUGCVehicleDamageToPlayerPawnProcess: UUGCVehicleDamageToAliveProcess
local UUGCVehicleDamageToPlayerPawnProcess = {}
