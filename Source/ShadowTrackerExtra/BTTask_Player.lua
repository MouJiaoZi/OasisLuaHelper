---@meta

---@class UBTTask_Player: UBTTaskNode
local UBTTask_Player = {}

---@param OwnerComp UBehaviorTreeComponent
---@param NodeMemory number
---@return EBTNodeResult
function UBTTask_Player:BluePrintExecuteTask(OwnerComp, NodeMemory) end

---@param OwnerComp UBehaviorTreeComponent
---@param NodeMemory number
---@param DeltaSeconds number
function UBTTask_Player:BluePrintTickTask(OwnerComp, NodeMemory, DeltaSeconds) end

---@param OwnerComp UBehaviorTreeComponent
---@param NodeMemory number
---@param TaskResult EBTNodeResult
function UBTTask_Player:BluePrintTaskFinished(OwnerComp, NodeMemory, TaskResult) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value UObject
function UBTTask_Player:SetBlackboardValueAsObject(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value UClass
function UBTTask_Player:SetBlackboardValueAsClass(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value number
function UBTTask_Player:SetBlackboardValueAsEnum(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value number
function UBTTask_Player:SetBlackboardValueAsInt(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value number
function UBTTask_Player:SetBlackboardValueAsFloat(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value boolean
function UBTTask_Player:SetBlackboardValueAsBool(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value string
function UBTTask_Player:SetBlackboardValueAsString(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value string
function UBTTask_Player:SetBlackboardValueAsName(OwnerComp, Key, Value) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value FVector
function UBTTask_Player:SetBlackboardValueAsVector(OwnerComp, Key, Value) end

---(DEPRECATED) Use ClearBlackboardValue instead
---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
function UBTTask_Player:ClearBlackboardValueAsVector(OwnerComp, Key) end

---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
---@param Value FRotator
function UBTTask_Player:SetBlackboardValueAsRotator(OwnerComp, Key, Value) end

---Resets indicated value to "not set" value, based on values type
---@param OwnerComp UBehaviorTreeComponent
---@param Key FBlackboardKeySelector
function UBTTask_Player:ClearBlackboardValue(OwnerComp, Key) end
