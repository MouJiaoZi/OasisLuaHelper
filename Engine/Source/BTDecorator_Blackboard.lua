---@meta

---Decorator for accessing blackboard values
---@class EBTBlackboardRestart
---@field ValueChange number @On Value Change
---@field ResultChange number @On Result Change
EBTBlackboardRestart = {}


---Blackboard decorator node. A decorator node that bases its condition on a Blackboard key.
---@class UBTDecorator_Blackboard: UBTDecorator_BlackboardBase
---@field IntValue number @value for arithmetic operations
---@field FloatValue number @value for arithmetic operations
---@field StringValue string @value for string operations
---@field CachedDescription string @cached description
---@field OperationType number @operation type
---@field NotifyObserver EBTBlackboardRestart @when observer can try to request abort?
local UBTDecorator_Blackboard = {}
