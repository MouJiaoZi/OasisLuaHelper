---@meta

---@class ECurveSportLoopType
---@field CSLT_Normal number @正向循环
---@field CSLT_Reverse number @反向循环
ECurveSportLoopType = {}


---@class UCurveSportComponent: UActorComponent
---@field SportTime number
---@field LoopType ECurveSportLoopType
---@field bMoveRelativeWorld boolean
---@field LoopTimes number
---@field IntervalReplicateTime number
---@field DelayTime number
---@field ReplicatedTimer number
---@field InitLocation FVector
local UCurveSportComponent = {}

function UCurveSportComponent:OnRepReplicatedTimer() end
