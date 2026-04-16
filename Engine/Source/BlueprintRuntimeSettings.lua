---@meta

---@class EBlueprintWarningBehavior
---@field Warn number
---@field Error number
---@field Suppress number
EBlueprintWarningBehavior = {}


---@class FBlueprintWarningSettings
---@field WarningIdentifier string
---@field WarningDescription string
---@field WarningBehavior EBlueprintWarningBehavior
FBlueprintWarningSettings = {}


---Implements the settings for the BlueprintRuntime module
---@class UBlueprintRuntimeSettings: UObject
---@field WarningSettings ULuaArrayHelper<FBlueprintWarningSettings>
local UBlueprintRuntimeSettings = {}
