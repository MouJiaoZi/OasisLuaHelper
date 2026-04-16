---@meta

---@class EInputActionAccumulationBehavior
---@field TakeHighestAbsoluteValue number @Take the value from the mapping with the highest Absolute Value. For example, given a value of -0.3 and 0.5, the input action's value would be 0.5.
---@field Cumulative number @Cumulatively adds the key values for each mapping. For example, a value of -0.7 and +0.75 on the same input action would result in a value of 0.05. A practical example of when to use this would be for something like WASD movement, if you want pressing W and S to cancel each other out.
EInputActionAccumulationBehavior = {}


---@class FInputActionTagMappingName
---@field InputName string @Key that affect the action.
---@field bConsumeInput boolean
---@field Triggers ULuaArrayHelper<UInputMappingTrigger>
---@field Modifiers ULuaArrayHelper<UInputMappingModifier>
FInputActionTagMappingName = {}


---@class FInputTagMappingValue
---@field Triggers ULuaArrayHelper<UInputMappingTrigger>
---@field Modifiers ULuaArrayHelper<UInputMappingModifier>
---@field AccumulationBehavior EInputActionAccumulationBehavior
---@field MappingNames ULuaArrayHelper<FInputActionTagMappingName>
FInputTagMappingValue = {}


---@class FInputActionTagMapping
---@field Mappings ULuaMapHelper<FGameplayTag, FInputTagMappingValue>
FInputActionTagMapping = {}
