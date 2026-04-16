---@meta

---@class FClassicVaultData
---@field MontageName string
---@field ForwardBlockDist number
---@field BlockHeight number
---@field VaultThickThreshold number
---@field bIsJumping boolean
---@field bForceStartSync boolean
---@field bForceZPostionStartSync boolean
---@field VaultTime number
---@field PlaySpeedRatio number
---@field SpeedChangeTime number
---@field ChangeSpeedRatio number
---@field bAllowStandState boolean
---@field bAllowMoveState boolean
---@field bAllowSprintState boolean
---@field bPutUpGun boolean
---@field BreakWindowDelayTime number
---@field bIsCancelable boolean
---@field MinCancelTime number
---@field MaxCancelTime number
---@field bIsFallingVault boolean
---@field FallingVaultMinHeight number
---@field FallCrossMinHeight number
FClassicVaultData = {}


---@class FClassicFPPVaultData
---@field VaultHeight number
---@field MontageName string
---@field VaultTime number
---@field bIsJumping boolean
---@field VaultSpeed number
---@field VaultSpeedRate number
FClassicFPPVaultData = {}


---@class FClassicAIVaultData
---@field BlockHeight number
---@field VaultThickThreshold number
---@field bIsJumping boolean
---@field bIsFallingVault boolean
FClassicAIVaultData = {}


---@class UClassicVaultObject: UVaultObjectBase
---@field VaultDataMap ULuaMapHelper<string, FClassicVaultData>
---@field FPPVaultDataArray ULuaArrayHelper<FClassicFPPVaultData>
---@field bCheckDynamicBlock boolean
---@field ClimbDistance FVector
---@field bEnableLeaveStuckState boolean
---@field LeaveStuckAllowedPercentage number
---@field AIVaultDataMap ULuaMapHelper<string, FClassicAIVaultData>
---@field CurVaultData FClassicVaultData
---@field CurFPPVaultData FClassicFPPVaultData
local UClassicVaultObject = {}
