---@meta

---Base class for blueprint based service nodes. Do NOT use it for creating native c++ classes! When service receives Deactivation event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Activation, but does not handle external events. Please use them safely (unregister at abort) and call IsServiceActive() when in doubt.
---@class UBTService_BlueprintBase: UBTService
---@field bShowPropertyDetails number @show detailed information about properties
---@field bShowEventDetails number @show detailed information about implemented events
local UBTService_BlueprintBase = {}

---tick function suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
---@param DeltaSeconds number
function UBTService_BlueprintBase:ReceiveTick(OwnerActor, DeltaSeconds) end

---task search enters branch of tree suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTService_BlueprintBase:ReceiveSearchStart(OwnerActor) end

---service became active suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTService_BlueprintBase:ReceiveActivation(OwnerActor) end

---service became inactive suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTService_BlueprintBase:ReceiveDeactivation(OwnerActor) end

---Alternative AI version of ReceiveTick function. suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds number
function UBTService_BlueprintBase:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end

---Alternative AI version of ReceiveSearchStart function. suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTService_BlueprintBase:ReceiveSearchStartAI(OwnerController, ControlledPawn) end

---Alternative AI version of ReceiveActivation function. suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTService_BlueprintBase:ReceiveActivationAI(OwnerController, ControlledPawn) end

---Alternative AI version of ReceiveDeactivation function. suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTService_BlueprintBase:ReceiveDeactivationAI(OwnerController, ControlledPawn) end

---check if service is currently being active
---@return boolean
function UBTService_BlueprintBase:IsServiceActive() end
