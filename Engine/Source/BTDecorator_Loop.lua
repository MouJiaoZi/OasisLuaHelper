---@meta

---Loop decorator node. A decorator node that bases its condition on whether its loop counter has been exceeded.
---@class UBTDecorator_Loop: UBTDecorator
---@field NumLoops number @number of executions
---@field bInfiniteLoop boolean @infinite loop
---@field InfiniteLoopTimeoutTime number @timeout (when looping infinitely, when we finish a loop we will check whether we have spent this time looping, if we have we will stop looping). A negative value means loop forever.
local UBTDecorator_Loop = {}
