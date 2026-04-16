---@meta

---@class AEscapeNPCActor: AActor
---@field Item USkeletalMesh
local AEscapeNPCActor = {}

---@param Comp USkeletalMeshComponent
---@param bRenderInTwoPass boolean
function AEscapeNPCActor:SetCompRenderInTwoPass(Comp, bRenderInTwoPass) end

---@param RoleAnimInstance UAnimInstance
---@param RoleActiveMontage UAnimMontage
---@param ItemAnimInstance UAnimInstance
---@param ItemActiveMontage UAnimMontage
function AEscapeNPCActor:SyncItemAnim(RoleAnimInstance, RoleActiveMontage, ItemAnimInstance, ItemActiveMontage) end
