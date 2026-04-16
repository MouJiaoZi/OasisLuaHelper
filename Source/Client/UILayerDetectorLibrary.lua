---@meta

---UI层级检测器蓝图函数库 - 提供简单的静态接口 注意：接口在所有模式下都可用，但仅在UE_BUILD_DEVELOPMENT和WITH_EDITOR模式下执行具体逻辑
---@class UUILayerDetectorLibrary: UBlueprintFunctionLibrary
local UUILayerDetectorLibrary = {}

---获取指定位置最上层的UI组件蓝图路径列表
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param OutWidgetPaths ULuaArrayHelper<string>
---@return boolean
function UUILayerDetectorLibrary:GetTopLayerWidgetsAtPosition(WorldContextObject, ScreenPosition, OutWidgetPaths) end

---获取指定位置最上层的UI组件蓝图路径（只返回最上层的一个）
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@return string
function UUILayerDetectorLibrary:GetTopLayerWidgetAtPosition(WorldContextObject, ScreenPosition) end

---检查指定位置是否有UI组件
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@return boolean
function UUILayerDetectorLibrary:HasWidgetAtPosition(WorldContextObject, ScreenPosition) end

---获取指定位置所有UI组件的数量
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@return number
function UUILayerDetectorLibrary:GetWidgetCountAtPosition(WorldContextObject, ScreenPosition) end

---获取指定位置最上层的图片资源路径
---@param WorldContextObject UObject
---@param ScreenPosition FVector2D
---@param OutImagePath string
---@return boolean
function UUILayerDetectorLibrary:GetTopLayerImageAtPosition(WorldContextObject, ScreenPosition, OutImagePath) end

---切换Widget的显示/隐藏状态
---@param WorldContextObject UObject
---@param WidgetPath string
---@return boolean
function UUILayerDetectorLibrary:ToggleWidgetVisibility(WorldContextObject, WidgetPath) end

---获取Widget的屏幕空间边界
---@param WorldContextObject UObject
---@param WidgetPath string
---@param OutPosition FVector2D
---@param OutSize FVector2D
---@return boolean
function UUILayerDetectorLibrary:GetWidgetBounds(WorldContextObject, WidgetPath, OutPosition, OutSize) end

---获取Widget的详细信息
---@param WorldContextObject UObject
---@param WidgetPath string
---@param OutInfo string
---@return boolean
function UUILayerDetectorLibrary:GetWidgetInfo(WorldContextObject, WidgetPath, OutInfo) end
