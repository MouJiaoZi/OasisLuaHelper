---@meta

---@class FDynaHBoxSlotData
---@field DynaWidgetClass UUserWidget
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field Size FSlateChildSize @How much space this slot should occupy in the direction of the panel.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
---@field Index number
---@field Visible boolean
FDynaHBoxSlotData = {}


---@class UWST_DynaHBoxSlotDataMap: UWigetSkinType
---@field DynaChildMap ULuaMapHelper<string, FDynaHBoxSlotData>
local UWST_DynaHBoxSlotDataMap = {}


---@class UDynaHorizontalBox: UHorizontalBox, IWidgetSkinInterface
---@field OnCreateDynaWidget FOnCreateDynaWidget
---@field DynaChildMap ULuaMapHelper<string, FDynaHBoxSlotData>
local UDynaHorizontalBox = {}

---@param dynaWidgetName string
function UDynaHorizontalBox:RemoveDynamicWidget(dynaWidgetName) end

---@param dynaWidgetName string
---@return boolean
function UDynaHorizontalBox:IsCreated(dynaWidgetName) end

---@param dynaWidgetName string
---@param dynaWidgetVisibility ESlateVisibility
function UDynaHorizontalBox:SetDynaWidgetVisibility(dynaWidgetName, dynaWidgetVisibility) end

---@param dynaWidgetVisibility ESlateVisibility
function UDynaHorizontalBox:SetAllDynaWidgetVisibility(dynaWidgetVisibility) end
