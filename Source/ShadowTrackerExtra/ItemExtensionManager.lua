---@meta

---@class UItemExtensionManager: UActorComponent, ILuaInterface
---@field ConfigActiveMap ULuaMapHelper<number, boolean>
---@field OverrideConfigList ULuaMapHelper<number, FItemWidgetExtensionConfiMap>
---@field ConfigActiveStatic ULuaArrayHelper<number>
---@field ConfigMapStatic ULuaMapHelper<number, FItemWidgetExtensionConfiMap>
---@field ItemExtensionInstanceMap ULuaMapHelper<number, UItemWidgetExtension>
---@field EnableEditConfig boolean
local UItemExtensionManager = {}

function UItemExtensionManager:Init() end

function UItemExtensionManager:Uninit() end

---@return string
function UItemExtensionManager:GetLuaModule() end

function UItemExtensionManager:OnBeginPlay_Lua() end

function UItemExtensionManager:OnEndPlay_Lua() end
