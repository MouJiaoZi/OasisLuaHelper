---@meta

---@class FAirAttackParams
---@field AttackLocation FVector
---@field AttackRadius number
---@field AttackDelay number
---@field bValidParams boolean
FAirAttackParams = {}


---@class FAirAttackCommandCall
---@field AirAttackParams FAirAttackParams
FAirAttackCommandCall = {}


---@class UCheatCommand_AirAttack: UCheatCommand
---@field DelayCallList ULuaArrayHelper<FAirAttackCommandCall>
local UCheatCommand_AirAttack = {}

---@param InCommandInfo FCheatCommandInfo
---@param InAirAttackLocation FVector
---@param InAirAttackRadius number
---@param InAirAttackDelay number
function UCheatCommand_AirAttack:PackCommandParams(InCommandInfo, InAirAttackLocation, InAirAttackRadius, InAirAttackDelay) end

---@param InCommandInfo FCheatCommandInfo
---@return FAirAttackParams
function UCheatCommand_AirAttack:UnPackCommandParams(InCommandInfo) end

---@param InAirAttackCommandCall FAirAttackCommandCall
function UCheatCommand_AirAttack:CallAirAttack(InAirAttackCommandCall) end

---@param InCommandCall FAirAttackCommandCall
function UCheatCommand_AirAttack:DelayAirAttackCall(InCommandCall) end
