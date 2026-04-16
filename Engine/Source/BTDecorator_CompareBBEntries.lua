---@meta

---@class EBlackBoardEntryComparison
---@field Equal number @Is Equal To
---@field NotEqual number @Is Not Equal To
EBlackBoardEntryComparison = {}


---Blackboard comparison decorator node. A decorator node that bases its condition on a comparison between two Blackboard keys.
---@class UBTDecorator_CompareBBEntries: UBTDecorator
---@field Operator EBlackBoardEntryComparison @operation type
---@field BlackboardKeyA FBlackboardKeySelector @blackboard key selector
---@field BlackboardKeyB FBlackboardKeySelector @blackboard key selector
local UBTDecorator_CompareBBEntries = {}
