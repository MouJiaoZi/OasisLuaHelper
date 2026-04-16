---@meta

---@class UVehicleInteractorComponent: UVehicleComponent, IInteractorInterface
---@field EnterDriverBehaviorName string
---@field EnterDriverButtonName string
---@field EnterPassengerBehaviorName string
---@field EnterPassengerButtonName string
---@field ChangeTireBehaviorName string
---@field ChangeTireButtonName string
---@field RepairBehaviorName string
---@field RepairButtonName string
---@field PickupBehaviorName string
---@field PickupButtonName string
---@field HideUIStates ULuaArrayHelper<EPawnState>
---@field IgnoreVehicleTriggerBox boolean
---@field bDriverSeatAvailable boolean
---@field bPassengerSeatAvailable boolean
local UVehicleInteractorComponent = {}

---@param SelfCharacter ASTExtraPlayerCharacter
---@return boolean
function UVehicleInteractorComponent:ShouldHideUI(SelfCharacter) end
