---@meta

---@class UGetActorStrategy
---@field EGetActorStrategy_Nearest number @距离最近
---@field EGetActorStrategy_Random number @随机
UGetActorStrategy = {}


---@class UBTTask_UGC_GetActorOfClass: UBTTaskNode
---@field ActorClass AActor
---@field FindRadius number
---@field ChooseStrategy UGetActorStrategy
---@field OutActorBlackboardKey any
local UBTTask_UGC_GetActorOfClass = {}
