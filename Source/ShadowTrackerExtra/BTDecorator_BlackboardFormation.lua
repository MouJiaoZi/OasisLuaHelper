---@meta

---@class EBlackboardFormationTestLogic
---@field And number @并且
---@field Or number @或者
EBlackboardFormationTestLogic = {}


---判断整个编队的黑板值
---@class UBTDecorator_BlackboardFormation: UBTDecorator_Blackboard
---@field InSearchFormationMemberRadius number
---@field InSearchFormationMemberTag string
---@field InBlackboardTestLogic EBlackboardFormationTestLogic
local UBTDecorator_BlackboardFormation = {}
