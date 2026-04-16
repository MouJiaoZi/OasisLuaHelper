---@meta

---@class EUAESkillCondition_BlackboardValueComparison
---@field Equal number @等于
---@field NotEqual number @不等于
---@field Less number @小于
---@field Greater number @大于
---@field LessEqual number @小于等于
---@field GreaterEqual number @大于等于
EUAESkillCondition_BlackboardValueComparison = {}


---@class UUAESkillCondition_BlackboardValueComparison: UUAESkillCondition
---@field Key FUAEBlackboardKeySelector
---@field Type EUAEBlackboardType
---@field Comparison EUAESkillCondition_BlackboardValueComparison
---@field ExpectedObject UObject
---@field ExpectedClass UObject
---@field ExpectedEnum number
---@field ExpectedInt number
---@field ExpectedFloat number
---@field ExpectedBool boolean
---@field ExpectedString string
---@field ExpectedName string
---@field ExpectedVector FVector
local UUAESkillCondition_BlackboardValueComparison = {}
