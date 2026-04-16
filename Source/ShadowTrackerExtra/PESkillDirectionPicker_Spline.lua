---@meta

---@class ESplinePickerDirectionType
---@field ESplinePickerDirectionType_Camera number @相机方向
---@field ESplinePickerDirectionType_AimTarget number @准星方向
ESplinePickerDirectionType = {}


---@class ESplinePickerOffsetType
---@field FSplinePickerOffsetType_Pawn number @角色位置
---@field FSplinePickerOffsetType_Muzzle number @枪口位置
ESplinePickerOffsetType = {}


---投掷Picker参数
---@class FSplinePickerParams
---@field DirectionType ESplinePickerDirectionType @方向类型
---@field OffsetType ESplinePickerOffsetType @位置偏移类型
---@field Offset FTransform @从角色的哪个socket生成抛体
---@field GravityScale number @重力系数
---@field ProjectileSpeed number @投掷速度
---@field EnableTraceByChannel boolean @是否使用TraceByChannel
---@field TraceChannel ECollisionChannel
FSplinePickerParams = {}


---投掷类技能 Indicator
---@class FPESkillIndicator_Spline
---@field PickerParam FSplinePickerParams
---@field Color FLinearColor
FPESkillIndicator_Spline = {}


---投掷类技能 Picker，选择一个方向
---@class UPESkillDirectionPicker_Spline: UPESkillDirectionPickerBase
---@field PickerParam FSplinePickerParams
---@field SplineIndicator FPESkillIndicator_Spline
local UPESkillDirectionPicker_Spline = {}
