---@meta

---@class UItemWidgetExtensionProxy: UObject
---@field ExtensionType number
---@field ID number
---@field UIBPPath string
---@field MountWidgetName string
---@field AnchorData FAnchorData
---@field AutoSize boolean
---@field ZOrder number
local UItemWidgetExtensionProxy = {}

function UItemWidgetExtensionProxy:OnInit_Lua() end

function UItemWidgetExtensionProxy:OnUninit_Lua() end

---@return boolean
function UItemWidgetExtensionProxy:HasUI() end
