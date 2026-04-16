---@meta

---AI脱障组件 判定AI可能卡到NavMash外的点时，会尝试将它拉到之前走过的合法位置
---@class UAIMoveStuckComponent: UActorComponent
---@field bEnbaleAIMoveCheck boolean @是否开启功能
---@field bUseComponentFindPath boolean @是否需要自主寻路
---@field bUseBlackBoardTarget boolean @是否使用黑板值作为目标
---@field BlackBoardTargetName string
---@field MoveCheckDistanceThreshold number @最小允许和上一次检查时距离阈值
---@field CoutinueStuckTimesThreshold number @判定卡住的连续检查次数
---@field MoveHistoryDistanceThreshold number @最小允许保存历史位置时的距离阈值
---@field ComponentFindPathInterval number @自主寻路间隔
---@field MaxMoveDistanceThreshold number @跨实例检查，最大允许和初始位置距离阈值
---@field bEnableFinalCheck boolean @是否开启每局结束阶段保底检查
---@field FinalCheckZMax number @保底检查Z轴高度上界
---@field FinalCheckZMin number @保底检查Z轴高度下界
---@field SpawnLocation FVector @记录出生位置
local UAIMoveStuckComponent = {}

---@param Result boolean
---@param StartLoc FVector
---@param EndLocation FVector
function UAIMoveStuckComponent:NotifyFindPathResult(Result, StartLoc, EndLocation) end

---@return boolean
function UAIMoveStuckComponent:CheckCurLocationValid() end

---@param TarLocation FVector
---@return boolean
function UAIMoveStuckComponent:CheckTargetLocationOnNavMesh(TarLocation) end

---@return FVector
function UAIMoveStuckComponent:GetFindPathTargetLocation() end

---@param NewLoc FVector
function UAIMoveStuckComponent:UpdateHistoryInfo(NewLoc) end

function UAIMoveStuckComponent:DragToLastVaildLocation() end

---@param PullBackLocation FVector
function UAIMoveStuckComponent:FinalCheckPullBack(PullBackLocation) end
