---@meta

---@class EModifyBlackboardDataNewValueType
---@field Clear number
---@field Int number
---@field Float number
---@field Bool number
---@field String number
---@field Name number
---@field Vector3 number
---@field Rotator number
---@field Class number
EModifyBlackboardDataNewValueType = {}


---@class UBTTask_ModifyBlackboardDataNew: UBTTaskNode
---@field BlackboardKey FBlackboardKeySelector
---@field ValueType EModifyBlackboardDataNewValueType
---@field SetIntValue number
---@field SetFloatValue number
---@field SetBoolValue boolean
---@field SetNameValue string
---@field SetStringValue string
---@field SetVectorValue FVector
---@field SetRotatorValue FRotator
local UBTTask_ModifyBlackboardDataNew = {}
