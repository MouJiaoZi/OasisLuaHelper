---@meta

---@class EIdeaFenceSelector
---@field None number
---@field Use_1 number
---@field Use_2 number
---@field Use_3 number
---@field Use_4 number
EIdeaFenceSelector = {}


---@class AIdeaFence: AFastMergeableActor
---@field BeginSelector EIdeaFenceSelector
---@field EndSelector EIdeaFenceSelector
---@field bUseRandomForMiddle boolean
---@field bUseMiddleSegmentsInOrder boolean
---@field UnitLengthForMiddle number
---@field UnitSpacingForMiddle number
---@field PivotOffsetForMiddle number
---@field RandomStreamForMiddle FRandomStream
---@field FenceCollisionProfile FCollisionProfileName
local AIdeaFence = {}
