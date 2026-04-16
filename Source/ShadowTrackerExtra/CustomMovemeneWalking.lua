---@meta

---@class ECustomWalkingDirType
---@field ECustomWalkingDirType_CharacterForward number
---@field ECustomWalkingDirType_CharacterForwardWithAcc number
---@field ECustomWalkingDirType_AccelerationDir number
---@field ECustomWalkingDirType_SpecifyDirection number
---@field ECustomWalkingDirType_AccelerationModifyDir number
ECustomWalkingDirType = {}


---@class UCustomMovemeneWalking: UCustomMovementBase
---@field DirType ECustomWalkingDirType
---@field SpecifyDir FVector
---@field SprintMaxAccelearation number
---@field RunMaxAccelearation number
---@field JumpZVelocity number
---@field JumpMaxCount number
---@field MultiJumpCD number
---@field AirControl number
---@field LandToJumpCD number
---@field PushForceFactor number
---@field HorizonalAccFactor number
---@field FrictionOverride number
---@field bCanWalkOnWater boolean
---@field AngleVelocity number
---@field GravityZ number
local UCustomMovemeneWalking = {}

---@param StartParam FCustomMovementRequestParam
---@param bIgnoreRole boolean
function UCustomMovemeneWalking:StartMovement(StartParam, bIgnoreRole) end

---@param StopParam FCustomMovementRequestParam
function UCustomMovemeneWalking:StopMovement(StopParam) end

---@return boolean
function UCustomMovemeneWalking:CanTrustClientMovementMode() end

function UCustomMovemeneWalking:ResetState() end

function UCustomMovemeneWalking:EnterState() end
