---@meta

---@class UExcellentOperationMeshComponent: USkeletalMeshComponent
---@field bSnapToGround boolean
---@field bBoxCheckObstacle boolean
---@field BoxExtentForCheck FVector
---@field BoxRelativeLocForCheck FVector
---@field BoxRelativeRotForCheck FRotator
local UExcellentOperationMeshComponent = {}

---@param OwnerActor AActor
---@param IgnoreActors ULuaArrayHelper<AActor>
---@param InLoc FVector
---@param UpperTraceZ number
---@param DownTraceZ number
---@param OutLoc FVector
---@return boolean
function UExcellentOperationMeshComponent:GetCheckBoxGroundWorldLoc(OwnerActor, IgnoreActors, InLoc, UpperTraceZ, DownTraceZ, OutLoc) end

---@param OwnerActor AActor
---@param Location FVector
---@param Rotation FQuat
---@param BoxExtent FVector
---@return boolean
function UExcellentOperationMeshComponent:CanPlaceByBoxProxy(OwnerActor, Location, Rotation, BoxExtent) end

---@param OutLocation FVector
---@param OutRotation FQuat
---@param OutBoxExtent FVector
function UExcellentOperationMeshComponent:QueryCheckBoxRelativeInfo(OutLocation, OutRotation, OutBoxExtent) end

---@param OutLocation FVector
---@param OutRotation FQuat
---@param OutBoxExtent FVector
function UExcellentOperationMeshComponent:QueryCheckBoxWorldInfo(OutLocation, OutRotation, OutBoxExtent) end
