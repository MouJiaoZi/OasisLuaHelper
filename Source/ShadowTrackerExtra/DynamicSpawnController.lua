---@meta

---@class UDynamicSpawnController: UDynamicWeatherController
---@field bSpawnLevel boolean
---@field DynamicLevelName string
---@field bAutoUnloadLevel boolean
---@field bUseLocalPlayerLocation boolean
---@field PlayerLocationOffset FTransform
---@field bUseWorldLocation boolean
---@field WorldLocationOffset FTransform
---@field bSpawnActor boolean
---@field ActorTemplate AActor
---@field bAutoUnloadActor boolean
---@field bUseLocalPlayerLocation_Actor boolean
---@field PlayerLocationOffset_Actor FTransform
---@field bUseWorldLocation_Actor boolean
---@field WorldLocationOffset_Actor FTransform
local UDynamicSpawnController = {}

---@param linkage number
function UDynamicSpawnController:OnLoadLevelFinish(linkage) end

---@param linkage number
function UDynamicSpawnController:OnUnloadLevelFinish(linkage) end
