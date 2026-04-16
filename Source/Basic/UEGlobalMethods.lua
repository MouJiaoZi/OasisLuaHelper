---@meta

---@class UUEGlobalMethods: UBlueprintFunctionLibrary
local UUEGlobalMethods = {}

---@param Character ACharacter
---@param Location FVector
---@param Rotation FRotator
---@param bSetLoc boolean
---@param bSetRot boolean
---@param NewBase UPrimitiveComponent
---@param BoneName string
---@param bNotifyActor boolean
---@param bAlterBase boolean
---@return boolean
function UUEGlobalMethods:SetCharacterByNewBasePos(Character, Location, Rotation, bSetLoc, bSetRot, NewBase, BoneName, bNotifyActor, bAlterBase) end

---@param HitResult FHitResult
---@return string
function UUEGlobalMethods:GetHitResultInfo(HitResult) end

---@param HitResult FHitResult
---@return string
function UUEGlobalMethods:GetHitResultSimpleInfo(HitResult) end

---@param InActorComponent UActorComponent
---@return string
function UUEGlobalMethods:GetActorComponentInfo(InActorComponent) end

---@param Actor AActor
---@return string
function UUEGlobalMethods:GetActorInfo(Actor) end

---@param Mesh USkeletalMeshComponent
---@return string
function UUEGlobalMethods:GetSkeletalMeshComponentInfo(Mesh) end
