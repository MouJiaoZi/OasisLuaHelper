---@meta

---@class FMobaVaultData
---@field ForwardBlockDist number
---@field BlockHeight number
---@field bNeedClimbStage boolean
---@field ClimbToHeightFromTop number
---@field ClimbStageMontageName string
---@field VaultStageMontageName string
---@field bForceStartSync boolean
---@field VaultTime number
FMobaVaultData = {}


---@class UMobaVaultObject: UVaultObjectBase
---@field VaultDataMap ULuaMapHelper<string, FMobaVaultData>
---@field bCheckDynamicBlock boolean
---@field ClimbDistance number
---@field bEnableLeaveStuckState boolean
---@field LeaveStuckAllowedPercentage number
---@field CurVaultData FMobaVaultData
local UMobaVaultObject = {}
