---@meta

---@class FDropItemPositionGenerator
FDropItemPositionGenerator = {}


---@class FDropItemPositionGenerator_NineGrid
---@field GridSize number
---@field StartOffset FVector
---@field CenterOffset FVector
---@field ZRange FVector2D
---@field DynamicCenterOffset FVector
FDropItemPositionGenerator_NineGrid = {}


---@class FDropItemPositionGenerator_RandomCircle
---@field StartOffset FVector
---@field CenterOffset FVector
---@field ZRange FVector2D
---@field DynamicCenterOffset FVector
---@field InnerCircleRadius number
---@field OuterCircleRadius number
---@field bUseRandomAngleRange boolean
---@field DefaultAngleRange FVector2D
---@field AngleRangeList ULuaArrayHelper<FVector2D>
FDropItemPositionGenerator_RandomCircle = {}


---@class FDropItemPositionGenerator_FixedSetting
---@field StartOffset FVector
---@field CenterOffset FVector
---@field DynamicCenterOffset FVector
---@field FixedPoint ULuaArrayHelper<FVector>
FDropItemPositionGenerator_FixedSetting = {}


---@class FDIPG_FunctionParam
---@field Num number
FDIPG_FunctionParam = {}


---@class FDIPG_FunctionName
---@field CustomFunctionName string
FDIPG_FunctionName = {}


---@class FDropItemPositionGenerator_CustomFunction
---@field CustomFunction FDIPG_FunctionName
---@field bFillWithLastElement boolean
FDropItemPositionGenerator_CustomFunction = {}


---@class FDropItemPositionGeneratorSelector
---@field SelectType EDropItemPositionType
---@field DropItemPositionGenerator_NineGrid FDropItemPositionGenerator_NineGrid
---@field DropItemPositionGenerator_RandomCircle FDropItemPositionGenerator_RandomCircle
---@field DropItemPositionGenerator_FixedSetting FDropItemPositionGenerator_FixedSetting
---@field DropItemPositionGenerator_CustomFunction FDropItemPositionGenerator_CustomFunction
---@field PositionGenerator_Invalid FDropItemPositionGenerator
FDropItemPositionGeneratorSelector = {}
