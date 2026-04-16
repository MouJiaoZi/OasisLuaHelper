---@meta

---@class UAutoTestSystemComponent: UActorComponent
---@field ConfigGraphList ULuaArrayHelper<UATTaskGraph>
---@field TaskGraphList ULuaArrayHelper<UATTaskGraph>
local UAutoTestSystemComponent = {}

---@param Graph UATTaskGraph
function UAutoTestSystemComponent:ProcessTaskGraph(Graph) end

---@param Graph UATTaskGraph
function UAutoTestSystemComponent:AddTaskGraph(Graph) end

---@param Graph UATTaskGraph
function UAutoTestSystemComponent:RemoveTaskGraph(Graph) end

---@param GraphIndex number
---@param Param FTaskGraphInitParam
---@return boolean
function UAutoTestSystemComponent:StartNewGraph(GraphIndex, Param) end

---@param GraphIndex number
---@return boolean
function UAutoTestSystemComponent:StopExistGraph(GraphIndex) end
