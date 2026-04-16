---@meta

---自动搜寻测试附近一定范围内门
---@class UATTaskNode_TestAroundDoors: UATTaskNodeBase
---@field SearchRange FVector2D
---@field MoveAndTestDoorClass UATTaskNode_MoveAndTestDoor
---@field TargetDoorNum number
local UATTaskNode_TestAroundDoors = {}

---@param Node UATTaskNodeBase
---@param Result EATTaskNodeExcuteResult
---@param ResultMsg string
function UATTaskNode_TestAroundDoors:TestAroundDoorsFinished(Node, Result, ResultMsg) end

---@param Node UATTaskNodeBase
---@param Result EATTaskNodeExcuteResult
---@param ResultMsg string
function UATTaskNode_TestAroundDoors:NodeCallbackCheck(Node, Result, ResultMsg) end
