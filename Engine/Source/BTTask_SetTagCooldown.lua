---@meta

---Cooldown task node. Sets a cooldown tag value.  Use with cooldown tag decorators to prevent behavior tree execution.
---@class UBTTask_SetTagCooldown: UBTTaskNode
---@field CooldownTag FGameplayTag @Gameplay tag that will be used for the cooldown.
---@field bAddToExistingDuration boolean @True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time).
---@field CooldownDuration number @Value we will add or set to the Cooldown tag when this task runs.
local UBTTask_SetTagCooldown = {}
