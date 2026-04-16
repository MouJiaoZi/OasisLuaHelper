---@meta

---@class UClothesCharacterAvatarEntity: UCharacterAvatarEntity
local UClothesCharacterAvatarEntity = {}

function UClothesCharacterAvatarEntity:ApplyAnimation() end

---@param DisableCheck boolean
function UClothesCharacterAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end

function UClothesCharacterAvatarEntity:OnPostRender() end

---@param ForceClear boolean
function UClothesCharacterAvatarEntity:ClearEntity(ForceClear) end

---@param InSkMeshComp USkeletalMeshComponent
function UClothesCharacterAvatarEntity:OnMeshVisibilityChanged(InSkMeshComp) end

---@param InTargetSlotID number
function UClothesCharacterAvatarEntity:PreMeshCompDestroy_Implementation(InTargetSlotID) end

function UClothesCharacterAvatarEntity:RefreshAvatarEmoteAdapt() end

---@return FSyncAdditionDataArray
function UClothesCharacterAvatarEntity:GetAdditionalData() end

function UClothesCharacterAvatarEntity:ExtractExtraPartInfo() end

function UClothesCharacterAvatarEntity:EntityBPLog() end

---@param InTargetHandle UBackpackAvatarHandle
---@return boolean
function UClothesCharacterAvatarEntity:ShouldAutoUpdateAdaptForBoneRetarget(InTargetHandle) end

---@param bApplyAdapt boolean
---@param InTargetHandle UBackpackAvatarHandle
function UClothesCharacterAvatarEntity:UpdateAutoAdaptForBoneRetargetAttachedComp(bApplyAdapt, InTargetHandle) end

---@param ClothMeshComp USkeletalMeshComponent
---@param HeadMeshComp USkeletalMeshComponent
---@param bApplyAdapt boolean
function UClothesCharacterAvatarEntity:InUpdateAutoAdaptForBoneRetargetAttachedComp(ClothMeshComp, HeadMeshComp, bApplyAdapt) end

---@param InAttachChild USceneComponent
---@param InAttachParent USceneComponent
function UClothesCharacterAvatarEntity:HandleMasterMeshAttachChildrenChanged(InAttachChild, InAttachParent) end

---@param InTargetSlot EAvatarSlotType
---@param InAvatarFuncBranch_NewFPP UAvatarFuncBranch_NewFPP
function UClothesCharacterAvatarEntity:HandleFPPAvatarMeshChange(InTargetSlot, InAvatarFuncBranch_NewFPP) end

function UClothesCharacterAvatarEntity:CheckExcludeSlotFeatureTag() end
