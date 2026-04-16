---@meta

---@class FBTTaskForceIdleMemory
FBTTaskForceIdleMemory = {}


---强制怪物静止一段时间
---@class UBTTask_ForceIdle: UBTTaskNode
---@field bUseCustomIdelParam boolean
---@field IdleTime number
---@field RandomDeviation number
---@field bRandIdle boolean
---@field IdleBlendSpaceValue number
---@field ValidIdleBSValues ULuaArrayHelper<number>
---@field KeyIdleTime any
---@field KeyIdleBlendSpaceValue any
local UBTTask_ForceIdle = {}
