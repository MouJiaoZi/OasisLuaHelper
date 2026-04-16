---@meta

---@class ECustomSimpleFlyingDirType
---@field CustomSimpleFlyingDir_CharacterForward number
---@field CustomSimpleFlyingDir_CharacterForwardWithAcc number
---@field CustomSimpleFlyingDir_AccelerationDir number
---@field CustomSimpleFlyingDir_SpecifyDirection number
---@field CustomSimpleFlyingDir_SpecifyLocation number
---@field CustomSimpleFlyingDir_AccelerationAdditive number
---@field CustomSimpleFlyingDir_ControllerDirection number
---@field CustomSimpleFlyingDir_Reserve number
ECustomSimpleFlyingDirType = {}


---@class FCustomMovementRequestParamSimpleFlying
---@field AssetName string
FCustomMovementRequestParamSimpleFlying = {}


---@class FSimpleFlyingAssetConfig
---@field bClearVelocityOnExit boolean
---@field SpecifyDir FVector
---@field InitVelocity FVector
---@field bOverrideXYVelocity boolean
---@field bOverrideZVelocity boolean
---@field AirControl number
---@field FluidFriction number
---@field GravityZ number
---@field TerminalVelocity number
---@field HorizonalAccFactor number
---@field MaxAdditiveSpeed number
---@field DirType ECustomSimpleFlyingDirType
---@field bNeedResetTime boolean
---@field bEnableAdditiveForwardOrBackwordCurve boolean
FSimpleFlyingAssetConfig = {}


---@class UCustomMovemeneSimpleFlying: UCustomMovemeneFlyingBase
---@field bClearVelocityOnExit boolean
---@field SpecifyDir FVector
---@field InitVelocity FVector
---@field bOverrideXYVelocity boolean
---@field bOverrideZVelocity boolean
---@field AirControl number
---@field FluidFriction number
---@field GravityZ number
---@field HorizonalAccFactor number
---@field DirType ECustomSimpleFlyingDirType
---@field AssetConfigs ULuaMapHelper<number, FSimpleFlyingAssetConfig>
---@field SpecifyLocation FVector
local UCustomMovemeneSimpleFlying = {}

---@param DeltaTime number
---@return number
function UCustomMovemeneSimpleFlying:GetAccelerationZ(DeltaTime) end
