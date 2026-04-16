---@meta

---@class USceneInteractionComponent: UActorComponent
local USceneInteractionComponent = {}

---@param InteractionActor ASceneInteractionActor
function USceneInteractionComponent:TriggerInteraction(InteractionActor) end

---@param InParamID number
function USceneInteractionComponent:RPC_ToServerTriggerInteraction(InParamID) end

---@param InteractionActor ASceneInteractionActor
---@param InController ASTExtraPlayerController
---@param InParamID number
function USceneInteractionComponent:ServerTriggerInteraction(InteractionActor, InController, InParamID) end
