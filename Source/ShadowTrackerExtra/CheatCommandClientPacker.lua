---@meta

---@class UCheatCommandClientPacker: UBlueprintFunctionLibrary
local UCheatCommandClientPacker = {}

---@param InCommandTriggerObj UObject
---@param InCheatCommandInfo FCheatCommandInfo
---@return boolean
function UCheatCommandClientPacker:PushCheatCommand(InCommandTriggerObj, InCheatCommandInfo) end

---@param InCommandTriggerObj UObject
---@param InMoveLocation FVector
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_MoveTo(InCommandTriggerObj, InMoveLocation) end

---@param InCommandTriggerObj UObject
---@param InItemID number
---@param InItemCount number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_AddItem(InCommandTriggerObj, InItemID, InItemCount) end

---@param InCommandTriggerObj UObject
---@param InVehicleID number
---@param InVehicleHP number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_SpawnVehicle(InCommandTriggerObj, InVehicleID, InVehicleHP) end

---@param InCommandTriggerObj UObject
---@param InTorqueScale number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_SetVehicleTorqueScale(InCommandTriggerObj, InTorqueScale) end

---@param InCommandTriggerObj UObject
---@param InMaxRPMScale number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_SetVehicleMaxRPMScale(InCommandTriggerObj, InMaxRPMScale) end

---@param InCommandTriggerObj UObject
---@param InAirAttackLocation FVector
---@param InAirAttackRadius number
---@param InAirAttackDelay number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_AirAttack(InCommandTriggerObj, InAirAttackLocation, InAirAttackRadius, InAirAttackDelay) end

---@param InCommandTriggerObj UObject
---@param InAirDropLocation FVector2D
---@param InAirDropType number
---@param InAirDropDelay number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_AirDrop(InCommandTriggerObj, InAirDropLocation, InAirDropType, InAirDropDelay) end

---@param InCommandTriggerObj UObject
---@param InIsInvincible number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_SetInvincible(InCommandTriggerObj, InIsInvincible) end

---@param InCommandTriggerObj UObject
---@param InPlayerCheatProperty FPlayerCheatProperty
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_SetPlayerProperty(InCommandTriggerObj, InPlayerCheatProperty) end

---@param InCommandTriggerObj UObject
---@param InIsCameraFreeMove number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_CameraFreeMove(InCommandTriggerObj, InIsCameraFreeMove) end

---@param InCommandTriggerObj UObject
---@param NewTimeDilation number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_SetGlobalTimeDilation(InCommandTriggerObj, NewTimeDilation) end

---@param InCommandTriggerObj UObject
---@param CommandType number
---@param InIsOpen number
---@return boolean
function UCheatCommandClientPacker:PackAndPushCommand_SetNeonCreation(InCommandTriggerObj, CommandType, InIsOpen) end
