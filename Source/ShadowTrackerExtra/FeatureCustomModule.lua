---@meta

---@class UFeatureCustomModule: UObject
---@field ClassPath UFeatureCustomModule
---@field bEnableKeepInherit boolean
---@field Tags ULuaArrayHelper<string>
---@field bEnableTick boolean
---@field bEnableClientTick boolean
---@field bEnableServerTick boolean
---@field TickDeltaTime number
local UFeatureCustomModule = {}

---@param EnableTick boolean
function UFeatureCustomModule:SetEnableTick(EnableTick) end

function UFeatureCustomModule:MarkFeatureCustomModulesDirty() end


---@class UFeatureCustomModule_Controller: UFeatureCustomModule
local UFeatureCustomModule_Controller = {}
