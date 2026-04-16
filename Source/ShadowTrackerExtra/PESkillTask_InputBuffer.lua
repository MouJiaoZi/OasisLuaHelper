---@meta

---@class FInputActionWithPriority
---@field InputAction FGameplayTag
---@field Priority number
---@field TimeOutLimit number
FInputActionWithPriority = {}


---@class UPESkillTask_InputBuffer: UPESkillTaskPeriod
---@field InputActionsWithPriority ULuaArrayHelper<FInputActionWithPriority>
local UPESkillTask_InputBuffer = {}
