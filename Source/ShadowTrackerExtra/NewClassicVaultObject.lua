---@meta

---@class EVaultDir
---@field Left number @朝左
---@field Middle number @朝前
---@field Right number @朝右
EVaultDir = {}


---@class EVaultFoot
---@field Left number @左脚在前
---@field Right number @右脚在前
EVaultFoot = {}


---@class FNewClassicVaultMontageType
---@field MontageName string
---@field Direction EVaultDir
---@field FootStatus EVaultFoot
FNewClassicVaultMontageType = {}


---@class FNewClassicVaultData
---@field MontageDataArray ULuaArrayHelper<FNewClassicVaultMontageType>
---@field MontageDataArray_FPP ULuaArrayHelper<FNewClassicVaultMontageType>
---@field bIsJumping boolean
---@field bIsFallingVault boolean
---@field FallingVaultMinHeight number
---@field FallCrossMinHeight number
---@field ForwardBlockDist_Old number
---@field ForwardBlockDist number
---@field NormallyStartDist number
---@field MinVaultHeight number
---@field MaxVaultHeight number
---@field VaultThickThreshold number
---@field LerpToStartRotTime number
---@field bForceStartLocXYSync boolean
---@field LerpToStartLocXYTime number
---@field bForceStartLocZSync boolean
---@field VaultTime number
---@field PlaySpeedRatio number
---@field bAllowStandState boolean
---@field bAllowMoveState boolean
---@field bAllowSprintState boolean
---@field bSwitchWeapon boolean
---@field BreakWindowDelayTime number
---@field bIsCancelable boolean
---@field MinCancelTime number
---@field MaxCancelTime number
---@field CancelRate number
---@field bInterruptBeforeMinCancelTime boolean
FNewClassicVaultData = {}


---@class FNewClassicFPPVaultData
---@field VaultHeight number
---@field MontageName string
---@field VaultTime number
---@field bIsJumping boolean
---@field VaultSpeed number
---@field VaultSpeedRate number
FNewClassicFPPVaultData = {}


---@class FNewClassicAIVaultData
---@field BlockHeight number
---@field VaultThickThreshold number
---@field bIsJumping boolean
---@field bIsFallingVault boolean
FNewClassicAIVaultData = {}


---@class UNewClassicVaultObject: UVaultObjectBase
---@field VaultDataMap ULuaMapHelper<string, FNewClassicVaultData>
---@field FPPVaultDataArray ULuaArrayHelper<FNewClassicFPPVaultData>
---@field bCheckDynamicBlock boolean
---@field ClimbDistance FVector
---@field CameraData FCameraOffsetData
---@field TriggerDelayResetTime number
---@field bEnableLeaveStuckState boolean
---@field LeaveStuckAllowedPercentage number
---@field AIVaultDataMap ULuaMapHelper<string, FNewClassicAIVaultData>
---@field CurVaultData FNewClassicVaultData
---@field CurFPPVaultData FNewClassicFPPVaultData
local UNewClassicVaultObject = {}
