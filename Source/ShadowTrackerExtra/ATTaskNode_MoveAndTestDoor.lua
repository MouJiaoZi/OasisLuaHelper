---@meta

---瞬移到一扇门并且测试
---@class UATTaskNode_MoveAndTestDoor: UATTaskNodeBase
---@field DelayTimeAfterMove number
---@field OffsetFromDoor number
---@field ToggleDoorClass UATTaskNode_ToggleDoor
local UATTaskNode_MoveAndTestDoor = {}

---@param Node UATTaskNodeBase
---@param Result EATTaskNodeExcuteResult
---@param ResultMsg string
function UATTaskNode_MoveAndTestDoor:TestDoorFinished(Node, Result, ResultMsg) end
