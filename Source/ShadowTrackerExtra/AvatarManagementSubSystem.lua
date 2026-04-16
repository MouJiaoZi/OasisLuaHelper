---@meta

---Avatar集中管理子系统（负责双端性能管理、数据收集，负载均衡等）
---@class UAvatarManagementSubSystem: UTickableWorldSubsystem
---@field LastFrameTotalCost number
---@field CurrentFrameTotalCost number
---@field bIsServer boolean
---@field AvatarManagementMods ULuaArrayHelper<UAvatarManagementModBase>
---@field AvatarManagementModsMap ULuaMapHelper<UClass, UAvatarManagementModBase>
---@field NeedLaunchedManagementModClasses ULuaArrayHelper<UAvatarManagementModBase>
local UAvatarManagementSubSystem = {}

---@param Outer UObject
---@return boolean
function UAvatarManagementSubSystem:NativeShouldCreateSubsystem(Outer) end

---@return boolean
function UAvatarManagementSubSystem:IsClient() end

---@return boolean
function UAvatarManagementSubSystem:IsServer() end
