---@meta

---倒地进入时特殊移动模式，用于播放倒地时一段位移表现
---@class UCustomMovementNearDeathEnter: UCustomMovementCurveBase
---@field NearDeathEnter_CustomMovementGameplayTag any
---@field bCheckSetMovemodeRole boolean
---@field bCheckDSCanEnterMovemode boolean
local UCustomMovementNearDeathEnter = {}

---@param InCharacterOwner ACharacter
---@param Param FCustomMovementRequestParam
---@return boolean
function UCustomMovementNearDeathEnter:ServerCheckCanEnterMovementDelegate(InCharacterOwner, Param) end
