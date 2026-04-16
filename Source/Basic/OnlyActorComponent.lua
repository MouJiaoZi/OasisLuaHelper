---@meta

---@class UOnlyActorComponent: UActorComponent
---@field bCanEverUpdate number
local UOnlyActorComponent = {}

---Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered
---@param bEnabled boolean
function UOnlyActorComponent:SetComponentTickEnabled(bEnabled) end
