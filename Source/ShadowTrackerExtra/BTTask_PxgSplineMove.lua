---@meta

---根据Spline曲线移动
---@class UBTTask_PxgSplineMove: UBTTaskNode
---@field AcceptableRadius number @fixed distance added to threshold between AI and goal location in destination reach test
---@field bReachTestIncludesAgentRadius number @if set, radius of AI's capsule will be added to threshold between AI and goal location in destination reach test
---@field bReachTestIncludesGoalRadius number @if set, radius of goal's capsule will be added to threshold between AI and goal location in destination reach test
---@field bIsLoop boolean @是否循环跟随曲线移动
---@field bIsMoveToEndAndStartBegining boolean @已经移动到末尾的话，是否从曲线起点开始移动 如果是循环跟随曲线移动，这个值会默认为true
---@field bIsUseSplineMoveComponentLoop boolean @是否使用Spline移动组件的循环
---@field InputSplineKey any @Spline曲线
---@field bObserveBlackboardInputSplineValue number @if move goal in BB changes the move will be redirected to new location
local UBTTask_PxgSplineMove = {}
