---@meta

---Component to handle receiving notifications from the OS about platform events.
---@class UPlatformEventsComponent: UActorComponent
---@field PlatformChangedToLaptopModeDelegate FPlatformEventDelegate @This is called when a convertible laptop changed into laptop mode.
---@field PlatformChangedToTabletModeDelegate FPlatformEventDelegate @This is called when a convertible laptop changed into tablet mode.
local UPlatformEventsComponent = {}

---Check whether a convertible laptop is laptop mode.
---@return boolean
function UPlatformEventsComponent:IsInLaptopMode() end

---Check whether a convertible laptop is laptop mode.
---@return boolean
function UPlatformEventsComponent:IsInTabletMode() end

---Check whether the platform supports convertible laptops. Note: This does not necessarily mean that the platform is a convertible laptop. For example, convertible laptops running Windows 7 or older will return false, and regular laptops running Windows 8 or newer will return true.
---@return boolean
function UPlatformEventsComponent:SupportsConvertibleLaptops() end
