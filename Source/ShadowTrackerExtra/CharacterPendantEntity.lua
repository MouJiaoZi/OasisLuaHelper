---@meta

---@class UCharacterPendantEntity: UCharacterAvatarEntity
local UCharacterPendantEntity = {}

function UCharacterPendantEntity:EnterRenderPipeline() end

function UCharacterPendantEntity:OnPostRender() end

---@param ForceClear boolean
function UCharacterPendantEntity:ClearEntity(ForceClear) end

---@param SelfMesh USkeletalMesh
---@return EMeshType
function UCharacterPendantEntity:GetMeshType(SelfMesh) end

---@param AvatarHandle UBackpackAvatarHandle
function UCharacterPendantEntity:ApplySocketRelativeTransform(AvatarHandle) end

---@param DeltaTime number
function UCharacterPendantEntity:TickEntity(DeltaTime) end

---@return EAvatarSlotType
function UCharacterPendantEntity:GetPendantSlotType() end

---@return EAvatarSlotType
function UCharacterPendantEntity:GetAttachPartSlotType() end

---@param InAttachedEntityVisibility boolean
function UCharacterPendantEntity:SetAttachedEntityVisibility(InAttachedEntityVisibility) end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UCharacterPendantEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@return boolean
function UCharacterPendantEntity:ClearEquipedMeshWhenRepeatPutOn() end

---@param DisableCheck boolean
function UCharacterPendantEntity:ResetEntityBeforePushToPool(DisableCheck) end
