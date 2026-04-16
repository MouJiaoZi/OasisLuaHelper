---@meta

---@class UInputMappingPreset: UDataAsset
---@field ContextDescription string
---@field Mappings FInputActionTagMapping
local UInputMappingPreset = {}

---@param InputTag FGameplayTag
---@return string
function UInputMappingPreset:FindInputActionForTag(InputTag) end
