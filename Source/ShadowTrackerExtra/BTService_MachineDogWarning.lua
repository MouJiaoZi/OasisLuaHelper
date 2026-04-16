---@meta

---@class EMachineDogState
---@field None number
---@field Warning number
---@field BeenInvaded number
---@field BeenHit number
---@field FindEnemy number
EMachineDogState = {}


---@class FBTServiceMachineDogWarningMemory
FBTServiceMachineDogWarningMemory = {}


---机器狗警戒
---@class UBTService_MachineDogWarning: UBTService
---@field InInvader FBlackboardKeySelector
---@field InIsInvadeBreak FBlackboardKeySelector
---@field InAttacker FBlackboardKeySelector
---@field InEnemy FBlackboardKeySelector
---@field OutWarningState FBlackboardKeySelector
---@field OutIsTurning FBlackboardKeySelector
---@field WarningTime number
---@field RotateCD number
---@field DefaultRotateTime number
---@field RotateTolerance number
---@field WarningPromptID number
---@field bShowLog boolean
local UBTService_MachineDogWarning = {}
