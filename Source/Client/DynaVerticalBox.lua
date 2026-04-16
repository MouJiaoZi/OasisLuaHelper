---@meta

---@class FDynaVBoxSlotData
---@field DynaWidgetClass UUserWidget
---@field Padding FMargin @The padding area between the slot and the content it contains.
---@field Size FSlateChildSize @How much space this slot should occupy in the direction of the panel.
---@field HorizontalAlignment EHorizontalAlignment @The alignment of the object horizontally.
---@field VerticalAlignment EVerticalAlignment @The alignment of the object vertically.
---@field Index number
---@field Visible boolean
FDynaVBoxSlotData = {}


---@class UWST_DynaVBoxSlotDataMap: UWigetSkinType
---@field DynaChildMap ULuaMapHelper<string, FDynaVBoxSlotData>
local UWST_DynaVBoxSlotDataMap = {}


---@class UDynaVerticalBox: UVerticalBox, IWidgetSkinInterface
---@field OnCreateDynaWidget FOnCreateDynaWidget
---@field DynaChildMap ULuaMapHelper<string, FDynaVBoxSlotData>
local UDynaVerticalBox = {}

---@param dynaWidgetName string
function UDynaVerticalBox:RemoveDynamicWidget(dynaWidgetName) end

---@param dynaWidgetName string
---@return boolean
function UDynaVerticalBox:IsCreated(dynaWidgetName) end

---@param dynaWidgetName string
---@param dynaWidgetVisibility ESlateVisibility
function UDynaVerticalBox:SetDynaWidgetVisibility(dynaWidgetName, dynaWidgetVisibility) end

---@param dynaWidgetVisibility ESlateVisibility
function UDynaVerticalBox:SetAllDynaWidgetVisibility(dynaWidgetVisibility) end
