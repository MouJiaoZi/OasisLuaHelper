---@meta

---@class UDynamicLevelController: UDynamicWeatherController
---@field DynamicLevelName string
---@field bAutoUnloadLevel boolean
---@field bUseLocalPlayerLocation boolean
---@field PlayerLocationOffset FTransform
---@field bUseWorldLocation boolean
---@field WorldLocationOffset FTransform
local UDynamicLevelController = {}

---@param linkage number
function UDynamicLevelController:OnLoadLevelFinish(linkage) end

---@param linkage number
function UDynamicLevelController:OnUnloadLevelFinish(linkage) end
