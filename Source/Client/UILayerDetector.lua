---@meta

---UI层级检测器 - 用于获取指定位置最上层的UI组件
---@class UUILayerDetector: UObject
local UUILayerDetector = {}

---获取指定位置最上层的UI组件蓝图路径列表
---@param ScreenPosition FVector2D
---@param OutWidgetPaths ULuaArrayHelper<string>
---@return boolean
function UUILayerDetector:GetTopLayerWidgetsAtPosition(ScreenPosition, OutWidgetPaths) end

---获取指定位置最上层的图片资源路径
---@param ScreenPosition FVector2D
---@param OutImagePath string
---@return boolean
function UUILayerDetector:GetTopLayerImageAtPosition(ScreenPosition, OutImagePath) end

---切换Widget的显示/隐藏状态
---@param WidgetPath string
---@return boolean
function UUILayerDetector:ToggleWidgetVisibility(WidgetPath) end

---获取Widget的屏幕空间边界
---@param WidgetPath string
---@param OutPosition FVector2D
---@param OutSize FVector2D
---@return boolean
function UUILayerDetector:GetWidgetBounds(WidgetPath, OutPosition, OutSize) end

---获取Widget的详细信息
---@param WidgetPath string
---@param OutInfo string
---@return boolean
function UUILayerDetector:GetWidgetInfo(WidgetPath, OutInfo) end

---绘制Widget的高亮边框（类似WidgetReflector的效果）
---@param WidgetPath string
---@param HighlightColor FLinearColor
---@param LayerId number
---@return number
function UUILayerDetector:DrawWidgetHighlight(WidgetPath, HighlightColor, LayerId) end

---绘制多个Widget的高亮边框
---@param WidgetPaths ULuaArrayHelper<string>
---@param HighlightColor FLinearColor
---@param LayerId number
---@return number
function UUILayerDetector:DrawMultipleWidgetHighlights(WidgetPaths, HighlightColor, LayerId) end
