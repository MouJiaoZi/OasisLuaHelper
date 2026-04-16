---@meta

---@class UBTTask_ApplyPersistEffect: UBTTaskNode
---@field PersistEffectClass UPersistEffectBase
---@field OverrideApplyTime number
---@field bWaitPersistEffectFinished boolean
---@field PersistEffectTimeOut number
---@field PersistEffectInitFunctionName string
---@field bGetInitFuncArgsFromBlackboard boolean
---@field InitFuncArgsPlain string
---@field InitFuncArgsBlackboardKey any
---@field bJumpToSpecifiedStateWhenAborted boolean
---@field JumpToStateWhenAborted string
local UBTTask_ApplyPersistEffect = {}
