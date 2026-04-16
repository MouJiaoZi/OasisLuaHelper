---@meta

---@class UBTTask_AnimalMove: UBTTask_MoveTo
---@field MovePose EAnimalMovePose
---@field bRestorePoseWhenFinished boolean
---@field bOpenCollisionDetect boolean
---@field CollisionDetectAdvancedTime number
---@field CollisionDetectFreq number
---@field bUseSweep boolean
---@field TraceChannel ECollisionChannel
---@field bRandomAcceptableRadius boolean
---@field RandomAcceptableRadiusRange FVector2D
---@field MoveWithOutPathFinding boolean
---@field MoveFailReviseLocationInterval number
---@field MoveFailLocationSearchRadius number
---@field bAsyncExecuteTask boolean
---@field bShowTargetLoc boolean
---@field bShowDetectLine boolean
local UBTTask_AnimalMove = {}
