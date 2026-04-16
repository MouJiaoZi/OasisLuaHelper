---@meta

---@class UBTFunctionLibrary: UBlueprintFunctionLibrary
local UBTFunctionLibrary = {}

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return number
function UBTFunctionLibrary:GetBlackboardValueAsEnum(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return number
function UBTFunctionLibrary:GetBlackboardValueAsInt(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return number
function UBTFunctionLibrary:GetBlackboardValueAsFloat(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return boolean
function UBTFunctionLibrary:GetBlackboardValueAsBool(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return string
function UBTFunctionLibrary:GetBlackboardValueAsString(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return string
function UBTFunctionLibrary:GetBlackboardValueAsName(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return FVector
function UBTFunctionLibrary:GetBlackboardValueAsVector(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@return FRotator
function UBTFunctionLibrary:GetBlackboardValueAsRotator(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value UObject
function UBTFunctionLibrary:SetBlackboardValueAsObject(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value UClass
function UBTFunctionLibrary:SetBlackboardValueAsClass(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value number
function UBTFunctionLibrary:SetBlackboardValueAsEnum(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value number
function UBTFunctionLibrary:SetBlackboardValueAsInt(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value number
function UBTFunctionLibrary:SetBlackboardValueAsFloat(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value boolean
function UBTFunctionLibrary:SetBlackboardValueAsBool(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value string
function UBTFunctionLibrary:SetBlackboardValueAsString(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value string
function UBTFunctionLibrary:SetBlackboardValueAsName(NodeOwner, Key, Value) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value FVector
function UBTFunctionLibrary:SetBlackboardValueAsVector(NodeOwner, Key, Value) end

---(DEPRECATED) Use ClearBlackboardValue instead
---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
function UBTFunctionLibrary:ClearBlackboardValueAsVector(NodeOwner, Key) end

---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
---@param Value FRotator
function UBTFunctionLibrary:SetBlackboardValueAsRotator(NodeOwner, Key, Value) end

---Resets indicated value to "not set" value, based on values type
---@param NodeOwner UBTNode
---@param Key FBlackboardKeySelector
function UBTFunctionLibrary:ClearBlackboardValue(NodeOwner, Key) end

---Initialize variables marked as "instance memory" and set owning actor for blackboard operations
---@param NodeOwner UBTNode
---@param OwningActor AActor
function UBTFunctionLibrary:StartUsingExternalEvent(NodeOwner, OwningActor) end

---Save variables marked as "instance memory" and clear owning actor
---@param NodeOwner UBTNode
function UBTFunctionLibrary:StopUsingExternalEvent(NodeOwner) end
