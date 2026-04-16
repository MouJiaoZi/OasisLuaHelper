---@meta

---@class USTExtraScopeSpringComponent: USpringArmComponent
---@field CameraRotatorOffset FRotator
---@field bActiveCameraRotatorOffset boolean
local USTExtraScopeSpringComponent = {}

---@param OldRotator FRotator
---@param NewRotator FRotator
function USTExtraScopeSpringComponent:HandleControlRotatorChange(OldRotator, NewRotator) end
