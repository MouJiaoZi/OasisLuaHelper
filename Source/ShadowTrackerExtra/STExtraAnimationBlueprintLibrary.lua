---@meta

---@class USTExtraAnimationBlueprintLibrary: UBlueprintFunctionLibrary
local USTExtraAnimationBlueprintLibrary = {}

---@param SkelMesh USkeletalMeshComponent
---@param InvokeAnimInstance UAnimInstance
---@return EAnimBPType
function USTExtraAnimationBlueprintLibrary:GetParentAnimInstanceType(SkelMesh, InvokeAnimInstance) end

---@param SkelMesh USkeletalMeshComponent
function USTExtraAnimationBlueprintLibrary:ForceUpdateMeshAnimInstancePose(SkelMesh) end

---@param SkelMesh USkeletalMeshComponent
function USTExtraAnimationBlueprintLibrary:ForceAnimInstanceClearNotifyAndTriggerStateEnd(SkelMesh) end

---@param AnimInstance UAnimInstance
function USTExtraAnimationBlueprintLibrary:ForceAnimInstanceClearNotifyAndTriggerStateEnd_AnimInstance(AnimInstance) end

---@param SkelMesh USkeletalMeshComponent
function USTExtraAnimationBlueprintLibrary:ClearAllAnimNotifyState(SkelMesh) end

---@param OnwerBSCharacter ASTExtraBaseCharacter
---@param bIsAdd boolean
---@param WhiteListOldMontage UAnimMontage
function USTExtraAnimationBlueprintLibrary:AddOrRemoveNewFPPWhiteListOfOldMontage(OnwerBSCharacter, bIsAdd, WhiteListOldMontage) end

---@param Character ASTExtraBaseCharacter
---@param bIsNewFPP boolean
---@param Montage UAnimMontage
---@return boolean
function USTExtraAnimationBlueprintLibrary:CharacterIsPlayingMontage(Character, bIsNewFPP, Montage) end
