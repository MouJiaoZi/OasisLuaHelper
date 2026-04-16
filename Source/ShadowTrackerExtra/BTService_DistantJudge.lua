---@meta

---@class FAIDistantJudgeNoftify
---@field RightValue number
---@field SetBBValue number
---@field NotifyBlackBoardKey FBlackboardKeySelector
FAIDistantJudgeNoftify = {}


---@class UBTService_DistantJudge: UBTService
---@field WatchTargetBlackBoardKey FBlackboardKeySelector
---@field DistantJudges ULuaArrayHelper<FAIDistantJudgeNoftify>
---@field ResetModifyBBData boolean
local UBTService_DistantJudge = {}
