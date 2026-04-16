---@meta

---@class USTExtraUserWidgetViewModel: UUAEUserWidget, IUAEDataModelViewModelInterface
---@field RefDataModel ULuaArrayHelper<UUAEDataModel>
local USTExtraUserWidgetViewModel = {}

---@param Class UUAEDataModel
---@param PrppertyName string
---@param Delegate FUAEDataModelDelegate
function USTExtraUserWidgetViewModel:RegisterPrpperty(Class, PrppertyName, Delegate) end

---@param EventName string
---@param Delegate FUAEDataModelDelegate
function USTExtraUserWidgetViewModel:RegisterEvent(EventName, Delegate) end
