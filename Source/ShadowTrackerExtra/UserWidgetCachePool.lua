---@meta

---@class FWidgetSetStruct
---@field WidgetSet ULuaSetHelper<UUserWidget>
FWidgetSetStruct = {}


---@class UUserWidgetCachePool: UObject, ILuaInterface
---@field RecycleUselessWidgets ULuaMapHelper<UUserWidget, FWidgetSetStruct>
---@field MaxNumWidgetsPerClass number
local UUserWidgetCachePool = {}

---@return string
function UUserWidgetCachePool:GetLuaModule() end

---@param WidgetSoftClass UUserWidget
---@param OnAsyncLoadWidgetCompleteDelegate FOnAsyncLoadWidgetCompleteDelegate
---@return boolean
function UUserWidgetCachePool:GetOrCreateWidgetAsync(WidgetSoftClass, OnAsyncLoadWidgetCompleteDelegate) end

---@param WidgetClassPath string
---@param OnAsyncLoadWidgetCompleteDelegate FOnAsyncLoadWidgetCompleteDelegate
---@return boolean
function UUserWidgetCachePool:GetOrCreateWidgetByPathAsync(WidgetClassPath, OnAsyncLoadWidgetCompleteDelegate) end

---@param Widget UUserWidget
---@return boolean
function UUserWidgetCachePool:RequestRecycleWidget(Widget) end

---@param WidgetSoftClass UUserWidget
---@param OnAsyncLoadWidgetCompleteDelegate FOnAsyncLoadWidgetCompleteDelegate
function UUserWidgetCachePool:OnWidgetClassLoaded(WidgetSoftClass, OnAsyncLoadWidgetCompleteDelegate) end

---@param WidgetClass UUserWidget
function UUserWidgetCachePool:ClearRecycleClassWidgets(WidgetClass) end

function UUserWidgetCachePool:ClearRecycleWidgets() end
