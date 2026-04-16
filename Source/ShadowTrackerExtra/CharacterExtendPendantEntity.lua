---@meta

---@class UCharacterExtendPendantEntity: UCharacterPendantEntity
local UCharacterExtendPendantEntity = {}

function UCharacterExtendPendantEntity:EnterRenderPipeline() end

---@param ForceClear boolean
function UCharacterExtendPendantEntity:ClearEntity(ForceClear) end

function UCharacterExtendPendantEntity:SetSocketName() end

---@return EAvatarSlotType
function UCharacterExtendPendantEntity:GetPendantSlotType() end

---@return EAvatarSlotType
function UCharacterExtendPendantEntity:GetAttachPartSlotType() end

---@param CollectRes ULuaMapHelper<EResourceType, FResourceList>
---@param DisableCheck boolean
function UCharacterExtendPendantEntity:CollectDesiredResource(CollectRes, DisableCheck) end

---@param DisableCheck boolean
function UCharacterExtendPendantEntity:ResetEntityBeforePushToPool(DisableCheck) end
