---@meta

---自动测试门任务
---@class UATTaskGraph_DoorTest: UATTaskGraph
---@field BlockSize FVector2D
---@field WorldLeftTopCorner FVector2D
---@field WorldSize FVector2D
---@field BlockLoadTime number
---@field TestResultShowTime number
---@field MoveAndTestBlockClass UATTaskNode_MoveAndTestBlock
---@field AllBlocksNum number
---@field FinishedBlocksNum number
---@field FinishedDoosNum number
---@field CurrentProcessNodesList ULuaArrayHelper<UATTaskNodeBase>
---@field bTestEnd boolean
---@field bTestSuccess boolean
local UATTaskGraph_DoorTest = {}

---@return string
function UATTaskGraph_DoorTest:GetCurrentInfo() end

---@param Node UATTaskNodeBase
---@param Result EATTaskNodeExcuteResult
---@param ResultMsg string
function UATTaskGraph_DoorTest:BlockTestEndFinished(Node, Result, ResultMsg) end

---@param Node UATTaskNodeBase
---@param Result EATTaskNodeExcuteResult
---@param ResultMsg string
function UATTaskGraph_DoorTest:NodeCallbackCheck(Node, Result, ResultMsg) end

function UATTaskGraph_DoorTest:DelayEndFinished() end
