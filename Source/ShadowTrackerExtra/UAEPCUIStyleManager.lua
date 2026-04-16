---@meta

---@class UUAEPCUIStyleManager: UObject
---@field CurrentApplyRefStyle ULuaArrayHelper<UUserRefStyle>
---@field MobileToPCUIStyle ULuaMapHelper<UUserWidgetStyle, UUserWidgetStyle>
local UUAEPCUIStyleManager = {}

---@param PCUIStyle string
---@param Load boolean
function UUAEPCUIStyleManager:AsyncLoadPCUIStyle(PCUIStyle, Load) end
