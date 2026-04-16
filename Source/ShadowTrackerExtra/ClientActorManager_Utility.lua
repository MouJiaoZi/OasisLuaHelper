---@meta

---@class UClientActorManager_Utility: UBlueprintFunctionLibrary
local UClientActorManager_Utility = {}

---@param WorldContextObject UObject
---@param OutActor AActor
---@return boolean
function UClientActorManager_Utility:RegisterClientSimulateRelevantActor(WorldContextObject, OutActor) end

---@param WorldContextObject UObject
---@param OutActor AActor
---@return boolean
function UClientActorManager_Utility:UnRegisterClientSimulateRelevantActor(WorldContextObject, OutActor) end

---@param PlayerController APlayerController
function UClientActorManager_Utility:OnSwitchedInDS(PlayerController) end
