---@meta

---通过tag查找所在的场景Actor上的Spline曲线
---@class UFindSceneMoveSplineComponent: UOnlyActorComponent
---@field MoveSplineTag string @Spline曲线的tag
---@field TraceOffset number @向下查找场景物件的偏移
local UFindSceneMoveSplineComponent = {}
