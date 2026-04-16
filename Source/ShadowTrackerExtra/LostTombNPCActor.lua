---@meta

---@class ENPCShowIdleType
---@field ENPCShowIdleType_TalkIdle number @TalkIdle
---@field ENPCShowIdleType_SceneIdle number @SceneIdle
---@field ENPCShowIdleType_MaxIdle number @MaxIdle
ENPCShowIdleType = {}


---@class ALostTombNPCActor: AActor
---@field Item USkeletalMesh
---@field MeshHD USkeletalMesh
---@field MeshLOD USkeletalMesh
---@field C_TalkIdleAnimSeq UAnimSequence
---@field C_SceneIdleAnimSeq UAnimSequence
---@field C_ShakeIdleAnim_List ULuaArrayHelper<UAnimSequence>
---@field C_TalkIdleMontage UAnimMontage
---@field C_SceneIdleMontage UAnimMontage
local ALostTombNPCActor = {}

---@param Comp USkeletalMeshComponent
---@param bRenderInTwoPass boolean
function ALostTombNPCActor:SetCompRenderInTwoPass(Comp, bRenderInTwoPass) end

---@param RoleAnimInstance UAnimInstance
---@param RoleActiveMontage UAnimMontage
---@param ItemAnimInstance UAnimInstance
---@param ItemActiveMontage UAnimMontage
function ALostTombNPCActor:SyncItemAnim(RoleAnimInstance, RoleActiveMontage, ItemAnimInstance, ItemActiveMontage) end

---@return boolean
function ALostTombNPCActor:IsHighEndDevice() end

function ALostTombNPCActor:InitAnim() end

function ALostTombNPCActor:PlayAnim() end

---@param InIdleType ENPCShowIdleType
function ALostTombNPCActor:SetCurrentIdleType(InIdleType) end
