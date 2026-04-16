---@meta

---@class FUGCCustomDamageNumber
FUGCCustomDamageNumber = {}


---自定义伤害数字单元
---@class FUGCCustomDamageNumberItemParams
---@field ImagePath string @图片路径
---@field Text string @文本，只支持数字和符号，图片路径为空时才有效
---@field ImageScaleX number @图片X轴缩放比例
---@field ImageScaleY number @图片Y轴缩放比例
FUGCCustomDamageNumberItemParams = {}


---自定义伤害数字参数
---@class FUGCDamageNumberParams
---@field Items ULuaArrayHelper<FUGCCustomDamageNumberItemParams> @显示单元列表
---@field TimeLife number @显示时间
---@field MoveTimeLife number @飞行时间
---@field DrawColor FLinearColor @数字的颜色
---@field DrawOutlineColor FLinearColor @数字的描边颜色
---@field DrawOutlineSize number @数字的描边大小
---@field FadeInTime number @淡入时间
---@field FadeOutTime number @淡出时间
---@field SizeScaleRange FVector2D @初始尺寸缩放范围
---@field MoveScaleRange FVector2D @移动距离缩放范围
---@field OriginPositionRangeX FVector2D @初始位置水平偏移范围
---@field OriginPositionRangeY FVector2D @初始位置垂直偏移范围
---@field MoveDirection FVector2D @飞行角度范围，范围-180到180
---@field bFollowTarget boolean @是否跟随目标
FUGCDamageNumberParams = {}


---@class UDamageNumberWidget_UGC: UDamageNumberWidget
---@field CustomSpeedCurveLength number
---@field CustomImageSize FVector2D
---@field CustomImageOffset FVector2D
---@field bMaintainCustomImageAspectRatio boolean
---@field DefaultOriginalPosition FVector2D
---@field CustomNumberList ULuaArrayHelper<FUGCCustomDamageNumber>
---@field ImageList ULuaArrayHelper<UTexture2D>
local UDamageNumberWidget_UGC = {}
