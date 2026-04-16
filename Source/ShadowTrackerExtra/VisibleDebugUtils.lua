---@meta

---@class UVisibleDebugUtils: UBlueprintFunctionLibrary
local UVisibleDebugUtils = {}

---@param WorldContextObject UObject
---@param StaticMeshComp UStaticMeshComponent
---@param ScreenRadiusSquared number
---@param bIsReplaced boolean
---@return number
function UVisibleDebugUtils:GetSMLOD(WorldContextObject, StaticMeshComp, ScreenRadiusSquared, bIsReplaced) end

---@param PrimitiveComponent UPrimitiveComponent
---@return boolean
function UVisibleDebugUtils:IsBound(PrimitiveComponent) end

---@param Origin FVector
---@param PC APlayerController
---@param SphereRadius number
---@return number
function UVisibleDebugUtils:ComputeLODSize(Origin, PC, SphereRadius) end

---@param InBodyInstance FBodyInstance
---@return ECollisionChannel
function UVisibleDebugUtils:GetObjectType(InBodyInstance) end
