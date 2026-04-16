---@meta

---@class AAvatarPoseRender: AActor
---@field AnimBPClass UAnimInstance
---@field PawnAvatarList ULuaMapHelper<number, UMeshComponent>
local AAvatarPoseRender = {}

---@param MeshComp UMeshComponent
---@param MasterMeshComp UMeshComponent
---@param SlotID number
function AAvatarPoseRender:CreateMeshComponent(MeshComp, MasterMeshComp, SlotID) end

---@param HeadComp USkeletalMeshComponent
function AAvatarPoseRender:CreateHeadComp(HeadComp) end

---@param MeshComp UMeshComponent
function AAvatarPoseRender:ApplyMaterial(MeshComp) end

---@param RenderMeshComp USkeletalMeshComponent
---@param TargetPoseMesh USkeletalMeshComponent
function AAvatarPoseRender:ApplyAnim(RenderMeshComp, TargetPoseMesh) end

---@param CopyPoseCharacter ASTExtraBaseCharacter
function AAvatarPoseRender:CopyAvatarPose(CopyPoseCharacter) end

function AAvatarPoseRender:SpawnAvatarPlayer() end

function AAvatarPoseRender:SpawnAvatarWeapon() end

---@param SlotID number
---@param IsEquipped boolean
function AAvatarPoseRender:OnAvatarEquipped(SlotID, IsEquipped) end
