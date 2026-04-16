---@meta

---任务
---@class UATTaskGraph: UObject
---@field DrawHudOffsetScale FVector2D
---@field LineOffsetY number
---@field GraphsState EATTaskGraphState
---@field TaskNodeList ULuaArrayHelper<UATTaskNodeBase>
local UATTaskGraph = {}

function UATTaskGraph:BeginGraph() end

---@param DeltaTime number
function UATTaskGraph:Tick(DeltaTime) end

function UATTaskGraph:EndGraph() end

---@param Task UATTaskNodeBase
function UATTaskGraph:ProcessTask(Task) end

---@param Node UATTaskNodeBase
function UATTaskGraph:AddTaskNode(Node) end

---@param Node UATTaskNodeBase
function UATTaskGraph:RemoveTaskNode(Node) end

---@param NewState EATTaskGraphState
function UATTaskGraph:ChangeState(NewState) end

function UATTaskGraph:ReceiveBeginGraph() end

---@param DeltaTime number
function UATTaskGraph:ReceiveTick(DeltaTime) end

function UATTaskGraph:ReceiveEndGraph() end
