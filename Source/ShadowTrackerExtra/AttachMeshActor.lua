---@meta

---@class AAttachMeshActor: AUAERegionActor
---@field AnimInstanceClass UAnimInstance
---@field AttachSocketName string
local AAttachMeshActor = {}

function AAttachMeshActor:AfterBeginPlay() end

function AAttachMeshActor:BP_OnRep_AttachmentReplication() end

---@param AnimInstanceSoftClassPtr UAnimInstance
function AAttachMeshActor:AnimInstanceAsyncLoadFinished(AnimInstanceSoftClassPtr) end

---@param InTargetSlot EAvatarSlotType
function AAttachMeshActor:TryApplyAdjustSocketAttachedCompForSlot(InTargetSlot) end

---@param InTargetSlot EAvatarSlotType
function AAttachMeshActor:TryCancelAdjustSocketAttachedCompForSlot(InTargetSlot) end

---@param OldMode EPlayerCameraMode
---@param NewMode EPlayerCameraMode
function AAttachMeshActor:OnCameraModeChangeFunc(OldMode, NewMode) end
