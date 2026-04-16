---@meta

---@class UVisualLoggerKismetLibrary: UBlueprintFunctionLibrary
local UVisualLoggerKismetLibrary = {}

---Logs simple text string with Visual Logger - recording for Visual Logs has to be enabled to record this data
---@param WorldContextObject UObject
---@param Text string
---@param LogCategory string
function UVisualLoggerKismetLibrary:LogText(WorldContextObject, Text, LogCategory) end

---Logs location as sphere with given radius - recording for Visual Logs has to be enabled to record this data
---@param WorldContextObject UObject
---@param Location FVector
---@param Text string
---@param ObjectColor FLinearColor
---@param Radius number
---@param LogCategory string
function UVisualLoggerKismetLibrary:LogLocation(WorldContextObject, Location, Text, ObjectColor, Radius, LogCategory) end

---Logs box shape - recording for Visual Logs has to be enabled to record this data
---@param WorldContextObject UObject
---@param BoxShape FBox
---@param Text string
---@param ObjectColor FLinearColor
---@param LogCategory string
function UVisualLoggerKismetLibrary:LogBox(WorldContextObject, BoxShape, Text, ObjectColor, LogCategory) end
