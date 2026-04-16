---@meta

---@class UCustomMovemeneDolphinMove: UCustomMovementBase
---@field GasSprintTime number
---@field SprintMaxAccelearation number
---@field RunMaxAccelearation number
---@field FrictionOverride number
---@field JumpZVelocity number
---@field JumpMaxCount number
---@field MultiJumpCD number
---@field AirControl number
---@field LandToJumpCD number
---@field JumpModifierName string
local UCustomMovemeneDolphinMove = {}

---@param Flag ECustomFlyingMoveFlag
---@return boolean
function UCustomMovemeneDolphinMove:SetCustomMoveFlag(Flag) end

---@param Flag number
---@return boolean
function UCustomMovemeneDolphinMove:SetMoveFlag(Flag) end

---@param State number
function UCustomMovemeneDolphinMove:DolphinDancerEvent(State) end

---@return boolean
function UCustomMovemeneDolphinMove:CanTrustClientMovementMode() end

function UCustomMovemeneDolphinMove:ResetState() end

function UCustomMovemeneDolphinMove:EnterState() end

---@param Add boolean
---@return boolean
function UCustomMovemeneDolphinMove:SetJumpDynamicModifier(Add) end
