---@meta

---@class UBTTask_GeneralFindEscapePosition: UBTTaskNode
---@field BBKeyEscapeTarget any
---@field BBKeyFoundEscapePosition any
---@field retryRules ULuaArrayHelper<FGeneralRandLocationRetryRule>
---@field EscapeDistanceRange FVector2D
---@field bEnableEscapePointReachableTest boolean
---@field bEnableMaxNavMeshDistanceCheck boolean
---@field fMaxNavMeshDistance number
---@field bNoPartialPath boolean
---@field HeightTestOffset number
---@field bDebug boolean
local UBTTask_GeneralFindEscapePosition = {}
