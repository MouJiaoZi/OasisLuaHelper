---@meta

---@class ASTExtraGZChickenMotorBoat: ASTExtraAmphibiousVehicle
---@field HideVehicleMeshWhenAttached boolean
---@field GZJMeshAttachSocketName string
---@field DriverSeatIndex number
---@field DriverWeaponIndex number
---@field AttachVehicleSeatIndex number
---@field AttachVehicleWeaponIndex number
---@field DriverSeatHideBoneName string
---@field AttachSeatHideBoneName string
local ASTExtraGZChickenMotorBoat = {}

---@param Vehicle ASTExtraVehicleBase
---@param VehicleAttachedTo ASTExtraVehicleBase
function ASTExtraGZChickenMotorBoat:OnAttachToAnotherVehicle(Vehicle, VehicleAttachedTo) end

---@param Vehicle ASTExtraVehicleBase
---@param VehicleAttachedTo ASTExtraVehicleBase
function ASTExtraGZChickenMotorBoat:OnAttachToAnotherVehicleBP(Vehicle, VehicleAttachedTo) end

---@param Vehicle ASTExtraVehicleBase
---@param VehicleDetachFrom ASTExtraVehicleBase
function ASTExtraGZChickenMotorBoat:OnDetachFromAnotherVehicle(Vehicle, VehicleDetachFrom) end

---@param Vehicle ASTExtraVehicleBase
---@param VehicleDetachFrom ASTExtraVehicleBase
function ASTExtraGZChickenMotorBoat:OnDetachFromAnotherVehicleBP(Vehicle, VehicleDetachFrom) end

---@param Attached boolean
function ASTExtraGZChickenMotorBoat:UpdateVehicleVisibility(Attached) end

---@param Attached boolean
function ASTExtraGZChickenMotorBoat:UpdateWeaponVisibility(Attached) end

function ASTExtraGZChickenMotorBoat:OnVehicleWeaponRep() end

function ASTExtraGZChickenMotorBoat:OnVehicleWeaponRepBP() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function ASTExtraGZChickenMotorBoat:OnVehicleAvatarChange(AsyncLoadID, LoadEventFrom) end
