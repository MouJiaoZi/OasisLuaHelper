---@meta

---@class UParachuteCharacterAvatarEntity: UCharacterAvatarEntity
---@field ParachuteSignTexture FSoftObjectPath
local UParachuteCharacterAvatarEntity = {}

---@param DisableCheck boolean
function UParachuteCharacterAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end

function UParachuteCharacterAvatarEntity:OnPostRender() end

---@param InSkMeshComp USkeletalMeshComponent
function UParachuteCharacterAvatarEntity:OnMeshVisibilityChanged(InSkMeshComp) end

function UParachuteCharacterAvatarEntity:RefreshParticleState() end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
function UParachuteCharacterAvatarEntity:CollectParachuteSign(CollectRes) end

function UParachuteCharacterAvatarEntity:RefreshParachuteSign() end

function UParachuteCharacterAvatarEntity:EnterLogicPipeline() end
