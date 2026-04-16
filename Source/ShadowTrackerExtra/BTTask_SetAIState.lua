---@meta

---@class EDealMethod
---@field DMEnter number @进入
---@field DMLeave number @离开
EDealMethod = {}


---@class UBTTask_SetAIState: UBTTaskNode
---@field DealMethod EDealMethod
---@field bIsAnimalState boolean
---@field AIState EPawnState
---@field AnimalState EAnimalState
---@field bAutoLeaveState boolean
---@field StateTime number
local UBTTask_SetAIState = {}
