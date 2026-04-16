---@meta

---从Pawn上获取一个Spline曲线。 需要在Pawn上挂上组件UFindSceneMoveSplineComponent。 勾选了IsUseInputSpline的话，如果有输入的Spline曲线，那么就直接用这个输入的。用于不会改变曲线的情况。
---@class UBTTask_PxgFindPawnSpline: UBTTaskNode
---@field bIsUseInputSpline boolean @如果InputSplineKey有值，是否使用InputSplineKey。 不使用的话，即使InputSplineKey黑板有值，也每次都去UFindSceneMoveSplineComponent上查找。
---@field InputSplineKey any @输入的Spline曲线
---@field OutputSplineKey any @输出的Spline曲线
local UBTTask_PxgFindPawnSpline = {}
