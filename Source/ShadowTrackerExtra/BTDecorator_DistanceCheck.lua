---@meta

---敌人类型
---@class ECompareLengthType
---@field ELengthGreater number @大于
---@field ELengthLess number @小于
---@field ELengthEequal number @等于
ECompareLengthType = {}


---@class UBTDecorator_DistanceCheck: UBTDecorator
---@field CenterActorBlackBoardKey any
---@field TargetActorBlackBoardKey any
---@field CompareOperation ECompareLengthType
---@field Distance number
local UBTDecorator_DistanceCheck = {}
