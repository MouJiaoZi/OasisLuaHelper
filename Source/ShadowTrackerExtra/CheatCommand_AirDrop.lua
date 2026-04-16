---@meta

---@class FAirDropParams
---@field DropLocation FVector2D
---@field DropType ECheatCommandAirDropType
---@field DropDelay number
---@field bValidParams boolean
---@field TriggerPlayerKey number
FAirDropParams = {}


---@class FAirDropCommandCall
---@field AirDropParams FAirDropParams
FAirDropCommandCall = {}


---@class UCheatCommand_AirDrop: UCheatCommand
---@field DelayCallList ULuaArrayHelper<FAirDropCommandCall>
local UCheatCommand_AirDrop = {}

---@param InCommandInfo FCheatCommandInfo
---@param InAirDropLocation FVector2D
---@param InAirDropType number
---@param InAirDropDelay number
function UCheatCommand_AirDrop:PackCommandParams(InCommandInfo, InAirDropLocation, InAirDropType, InAirDropDelay) end

---@param InCommandInfo FCheatCommandInfo
---@return FAirDropParams
function UCheatCommand_AirDrop:UnPackCommandParams(InCommandInfo) end

---@param InCommandCall FAirDropCommandCall
function UCheatCommand_AirDrop:CallAirDrop(InCommandCall) end

---@param InCommandCall FAirDropCommandCall
function UCheatCommand_AirDrop:DelayAirDrop(InCommandCall) end
