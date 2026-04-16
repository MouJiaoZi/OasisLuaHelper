---@meta

---@class URegisterSelfToGameModeComponent: UActorComponent
---@field RegisterToGameModeClass AGameModeBase
---@field RegisterToGameModePropertyName string
---@field RegisterChangedFunctionName string
local URegisterSelfToGameModeComponent = {}

function URegisterSelfToGameModeComponent:OnRegisterSelf() end

function URegisterSelfToGameModeComponent:OnUnregisterSelf() end

---@param ObjectToRegisterd UObject
---@param OldValueExpetected UObject
function URegisterSelfToGameModeComponent:InvalidateRegister(ObjectToRegisterd, OldValueExpetected) end

---@param OldValue UObject
function URegisterSelfToGameModeComponent:NotifyRegisterChanged(OldValue) end
