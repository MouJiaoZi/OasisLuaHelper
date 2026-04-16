---@meta

---先移动到一个区域中心，等待相关加载再测试区域里所有门
---@class UATTaskNode_MoveAndTestBlock: UATTaskNodeBase
---@field BlockCenter FVector
---@field BlockSize FVector2D
---@field LoadDelayTime number
---@field TestAroundDoorsClass UATTaskNode_TestAroundDoors
local UATTaskNode_MoveAndTestBlock = {}

---@param Node UATTaskNodeBase
---@param Result EATTaskNodeExcuteResult
---@param ResultMsg string
function UATTaskNode_MoveAndTestBlock:TestBlockFinished(Node, Result, ResultMsg) end
