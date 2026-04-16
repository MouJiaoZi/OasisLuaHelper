---@meta

---@class EItemExtensionType
---@field Backpack number @背包
---@field Pickup number @拾取栏
---@field Grenade number @武器快捷栏
---@field PCGrenade number @PC武器快捷栏
---@field Consume number @消耗品快捷栏
---@field PCConsume number @PC消耗品快捷栏
---@field NewGrenade number @武器快捷栏（新样式）
EItemExtensionType = {}


---@class FItemWidgetExtensionConfig
---@field LuaPath string
---@field UIBPClass FSoftClassPath
---@field MountWidgetName string
---@field AnchorData FAnchorData
---@field AutoSize boolean
---@field ZOrder number
FItemWidgetExtensionConfig = {}


---@class FItemWidgetExtensionConfigList
---@field ConfigList ULuaArrayHelper<FItemWidgetExtensionConfig>
FItemWidgetExtensionConfigList = {}


---@class FItemWidgetExtensionConfiMap
---@field Desc string
---@field ConfigMap ULuaMapHelper<EItemExtensionType, FItemWidgetExtensionConfigList>
FItemWidgetExtensionConfiMap = {}


---@class UItemWidgetExtension: UObject
---@field UIBPPath string
---@field ExtensionType number
---@field ItemProxyMap ULuaMapHelper<number, UItemWidgetExtensionProxyContainer>
local UItemWidgetExtension = {}
