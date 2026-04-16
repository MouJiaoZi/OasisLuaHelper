---@meta

---Base class for lua based Attachment nodes. Do NOT use it for creating native c++ classes! When Attachment receives Deactivation event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Activation, but does not handle external events. Please use them safely (unregister at abort) and call IsAttachmentActive() when in doubt.
---@class UBTAttachment_LuaBase: UBTService
local UBTAttachment_LuaBase = {}

---tick function
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds number
function UBTAttachment_LuaBase:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end

---task search enters branch of tree
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTAttachment_LuaBase:ReceiveSearchStartAI(OwnerController, ControlledPawn) end

---attachment became active
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTAttachment_LuaBase:ReceiveActivationAI(OwnerController, ControlledPawn) end

---attachment became inactive
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTAttachment_LuaBase:ReceiveDeactivationAI(OwnerController, ControlledPawn) end

---check if attachment is currently being active
---@return boolean
function UBTAttachment_LuaBase:IsAttachmentActive() end
