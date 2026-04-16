---@meta

---@class UItemWidgetExtensionProxyContainer: UObject, ILuaInterface
---@field ID number
---@field ExtensionType number
---@field ProxyList ULuaArrayHelper<UItemWidgetExtensionProxy>
local UItemWidgetExtensionProxyContainer = {}

---@return string
function UItemWidgetExtensionProxyContainer:GetLuaModule() end

function UItemWidgetExtensionProxyContainer:OnInit_Lua() end

function UItemWidgetExtensionProxyContainer:OnUninit_Lua() end
