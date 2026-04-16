---@meta

---敌人类型
---@class ECompareAngleType
---@field EAngleGreater number @大于
---@field EAngleLess number @小于
---@field EAngleEequal number @等于
ECompareAngleType = {}


---@class UBTDecorator_AngleCheck: UBTDecorator
---@field CenterActorBlackBoardKey any
---@field bCheckActor boolean
---@field TargetActorBlackBoardKey any
---@field TargePointBlackBoardKey any
---@field CompareOperation ECompareAngleType
---@field Degree number
local UBTDecorator_AngleCheck = {}
