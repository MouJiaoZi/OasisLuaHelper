---@meta

---@class EMoveToEndAction
---@field ReturnStart number @直接返回起点重新采样
---@field Loop number @从终点累加采样
---@field Revert number @从终点反向采样
EMoveToEndAction = {}


---根据采样距离来采样Spline曲线上的点
---@class UBTTask_PxgFindSplinePoint: UBTTaskNode
---@field SamplingDistance number @Spline曲线的采样距离
---@field MovedToCurPointRadius number @移动到当前目标点的范围 如果移动到了，说明可以切换下一个目标点了 注意：这个值跟随移动组件的判断是否移动到目标点的距离来填
---@field bUseSampling boolean @是否沿样条曲线采样，不使用采样则直接取样条曲线上的关键点
---@field MoveToEndAction EMoveToEndAction @到达终点后移动方式选择
---@field InputSplineKey any @Spline曲线
---@field OutputNextPointKey any @下一个位置输出
local UBTTask_PxgFindSplinePoint = {}
